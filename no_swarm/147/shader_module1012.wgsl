struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(2028f, -1232f, 1648f, -387f);

var<private> global1: vec2<f32>;

var<private> global2: array<vec3<i32>, 5>;

var<private> global3: array<u32, 25>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    let var_0 = false;
    global2 = array<vec3<i32>, 5>();
    var var_1 = Struct_2(-67327i, vec2<i32>(firstLeadingBit(-(~arg_1.b.c.x)), arg_1.b.c.x >> (arg_0.a.x % 32u)), arg_2.b, Struct_1(vec4<u32>(2914u, ~16418u, arg_0.a.x, firstTrailingBit(arg_2.b.a.x)), false, vec4<i32>(-(u_input.a << (0u % 32u)), min(~arg_1.b.c.x, 40339i), ~1i, ~(-2147483647i))), abs(vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, arg_0.a.x), arg_1.b.a.zz, vec2<bool>(false, true)), select(vec2<u32>(50197u, 0u), vec2<u32>(arg_2.b.a.x, 4294967295u), true)), ~(global3[_wgslsmith_index_u32(arg_1.b.a.x, 25u)] | global3[_wgslsmith_index_u32(7692u, 25u)]), 14519u)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-737f + _wgslsmith_f_op_f32(-1111f - 1747f)) * -830f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(160f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1549f))))), arg_2.a.x);
    var_1 = Struct_2(firstLeadingBit(countOneBits(var_1.a)) & (i32(-1i) * -(~arg_0.c.x)), var_1.b, Struct_1(abs(~(~arg_1.b.a)), var_0, _wgslsmith_add_vec4_i32(vec4<i32>(-504i, select(-2147483647i, u_input.a, var_0), ~2147483647i, arg_2.b.c.x << (global3[_wgslsmith_index_u32(34713u, 25u)] % 32u)), countOneBits(-vec4<i32>(var_1.c.c.x, u_input.a, 2147483647i, 31669i)))), arg_1.b, max(var_1.e ^ abs(vec3<u32>(33026u, 4294967295u, 4294967295u)), ~arg_1.b.a.ywy));
    return _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_div_f32(arg_2.a.x, -316f)));
}

fn func_2() -> f32 {
    global3 = array<u32, 25>();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(global0.x * 1000f), _wgslsmith_div_f32(-600f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global1.x), 1000f));
    var var_0 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(8692u, 0u, global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 25u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], global3[_wgslsmith_index_u32(60400u, 25u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44985u, 25u)], 25u)], 25u)])), all(vec4<bool>(true, false, false, false)) & true, vec4<i32>(u_input.a, -52270i, ~u_input.a, -9460i)), Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global0.wz * global0.yw), _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), vec2<f32>(global0.x, 706f)))), Struct_1(vec4<u32>(10450u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], global3[_wgslsmith_index_u32(7560u, 25u)], 4294967295u) << (vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 25u)], 4294967295u, 60966u) % vec4<u32>(32u)), true, -vec4<i32>(u_input.a, u_input.a, -69031i, 0i))), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(862f, global1.x)), Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], global3[_wgslsmith_index_u32(27240u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3322u, 25u)], 25u)], 25u)], 28974u) >> (vec4<u32>(43067u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], global3[_wgslsmith_index_u32(0u, 25u)]) % vec4<u32>(32u)), true, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 6077i, u_input.a), vec4<i32>(u_input.a, -8797i, u_input.a, u_input.a)))))), 636f);
    let var_1 = firstTrailingBit(firstLeadingBit(select(~vec4<u32>(1u, global3[_wgslsmith_index_u32(55055u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36945u, 25u)], 25u)], 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], global3[_wgslsmith_index_u32(48389u, 25u)], global3[_wgslsmith_index_u32(34520u, 25u)]), vec4<u32>(1u, global3[_wgslsmith_index_u32(165u, 25u)], 2124u, global3[_wgslsmith_index_u32(0u, 25u)])), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true))))) ^ select(vec4<u32>(abs(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31257u, 25u)], 25u)], 25u)], 25u)])), ~4294967295u, ~countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)], 25u)], 25u)]), 15283u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], ~15845u, 32295u, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1293u, 25u)] & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22738u, 25u)], 25u)], 25u)], _wgslsmith_clamp_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15241u, 25u)], 25u)], 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19768u, 25u)], 25u)], 25u)])), 25u)]), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)));
    global3 = array<u32, 25>();
    return 828f;
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.yww));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, global0.x) - global1.x), 459f, -1800f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-global0.zyx);
    var var_2 = global3[_wgslsmith_index_u32(~46909u, 25u)];
    var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), global0.x);
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, global0.x) * vec2<f32>(global1.x, -693f)) * vec2<f32>(-395f, -1000f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - _wgslsmith_f_op_vec2_f32(var_1.zx - vec2<f32>(-1000f, -1788f)))))), Struct_1(vec4<u32>(min(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 25u)], 25u)]), 66099u, _wgslsmith_mult_u32(1u, 42527u), _wgslsmith_dot_vec3_u32(vec3<u32>(19948u, global3[_wgslsmith_index_u32(1u, 25u)], 17621u), vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(22220u, 25u)], global3[_wgslsmith_index_u32(5032u, 25u)]))) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 4294967295u, 0u, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(13731u, 25u)], global3[_wgslsmith_index_u32(93618u, 25u)], 0u, 21261u)) % vec4<u32>(32u)), any(vec2<bool>(any(vec4<bool>(true, false, true, false)), true)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, 2147483647i, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), -firstTrailingBit(vec4<i32>(2147483647i, -1i, u_input.a, 41992i)), vec4<i32>(min(u_input.a, -7111i), min(u_input.a, u_input.a), _wgslsmith_mod_i32(u_input.a, u_input.a), ~u_input.a))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> Struct_3 {
    let var_0 = ~(~(~arg_0.b.a) ^ _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.b.a, _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.a.x, arg_0.b.a.x, global3[_wgslsmith_index_u32(arg_0.b.a.x, 25u)], global3[_wgslsmith_index_u32(0u, 25u)]), arg_0.b.a), _wgslsmith_mult_vec4_u32(vec4<u32>(59582u, arg_0.b.a.x, 31746u, 88033u), vec4<u32>(45663u, global3[_wgslsmith_index_u32(arg_0.b.a.x, 25u)], 54317u, 38318u))), firstLeadingBit(arg_0.b.a) << (_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], 61972u, 0u, 4294967295u), arg_0.b.a) % vec4<u32>(32u)), vec4<u32>(1u, 1u, arg_0.b.a.x, global3[_wgslsmith_index_u32(reverseBits(arg_0.b.a.x), 25u)])));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1488f)), -1199f))), func_1(_wgslsmith_f_op_vec3_f32(-global0.yyw)).b);
    let var_2 = !(true & any(select(!vec4<bool>(true, arg_0.b.b, true, false), vec4<bool>(arg_0.b.b, true, true, false), !vec4<bool>(arg_2, false, arg_2, false))));
    var var_3 = arg_0.b;
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, arg_1)), func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1624f * -660f)), _wgslsmith_f_op_f32(step(arg_1, -283f)), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global0.x)))).b);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: u32) -> i32 {
    global3 = array<u32, 25>();
    var var_0 = Struct_2(0i, -min(-(~arg_0.b.c.zw), ~(vec2<i32>(-8300i, arg_0.b.c.x) << (arg_0.b.a.zz % vec2<u32>(32u)))), func_4(arg_0, _wgslsmith_f_op_f32(-arg_0.a.x), false || (u_input.a < u_input.a)).b, func_4(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(-global0.wy), arg_0.b), -949f, true), -1062f, true).b, select(~arg_0.b.a.xxx, ~arg_0.b.a.zxz, true));
    let var_1 = true;
    let var_2 = Struct_2(var_0.d.c.x, vec2<i32>(~(~0i), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.a, 2147483647i), -2147483647i)) & vec2<i32>(firstLeadingBit(0i), ~u_input.a), Struct_1(~_wgslsmith_sub_vec4_u32(~vec4<u32>(29436u, 87526u, arg_2, arg_2), select(var_0.d.a, arg_0.b.a, true)), true && (all(arg_1) != func_4(arg_0, 3639f, var_0.d.b).b.b), -(~(-arg_0.b.c))), var_0.c, ~(arg_0.b.a.xxw | var_0.d.a.zww));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(247f, global0.x, -1161f, arg_0.a.x), vec4<f32>(global1.x, 1297f, global0.x, arg_0.a.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-404f - _wgslsmith_f_op_f32(f32(-1f) * -391f))), 1000f, global0.x, global1.x));
    return var_2.c.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(all(vec4<bool>(true, true, true, true)), (true && (0i >= u_input.a)) || !(global0.x == global0.x), any(vec4<bool>(true, true, true, true)));
    global3 = array<u32, 25>();
    let var_1 = func_5(func_4(func_1(global0.zyz), -1409f, var_0.x), select(!var_0.zz, !vec2<bool>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)] == global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], any(var_0)), select(var_0.zy, vec2<bool>(false, true), !(!var_0.zz))), global3[_wgslsmith_index_u32(1u, 25u)]);
    let var_2 = ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a, 58000i, func_4(Struct_3(vec2<f32>(2208f, -1345f), Struct_1(vec4<u32>(1u, 4294967295u, global3[_wgslsmith_index_u32(0u, 25u)], 1u), true, vec4<i32>(2147483647i, u_input.a, var_1, 10023i))), global1.x, true).b.c.x), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(17599u, ~4294967295u), 5u)]), -2147483647i);
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global1.x)))) - 1097f), -890f, 832f, 1307f), vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global0.x, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1874u, 25u)], 25u)], global3[_wgslsmith_index_u32(0u, 25u)], 11263u, global3[_wgslsmith_index_u32(0u, 25u)]), var_0.x, vec4<i32>(var_2, u_input.a, -12466i, var_1)), func_4(Struct_3(vec2<f32>(global0.x, -1272f), Struct_1(vec4<u32>(18012u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54048u, 25u)], 25u)], 25u)], 25u)], global3[_wgslsmith_index_u32(75258u, 25u)], 0u), var_0.x, vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a))), -1122f, var_0.x), func_4(Struct_3(global0.xz, Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(16759u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47485u, 25u)], 25u)], 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 25u)], 25u)]), var_0.x, vec4<i32>(-2147483647i, var_1, -38531i, 32032i))), -539f, false)))), 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, var_3.xzw, abs(abs(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(6354u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(28578u, 25u)], 25u)], 25u)], 25u)], 25u)], 6002u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(73973u, 25u)], 25u)])), ~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(51823u, 25u)], 25u)], global3[_wgslsmith_index_u32(4294967295u, 25u)], 44224u, global3[_wgslsmith_index_u32(1u, 25u)]), reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)], 25u)], 25u)], global3[_wgslsmith_index_u32(39526u, 25u)], 55382u, global3[_wgslsmith_index_u32(24207u, 25u)]))))), global2[_wgslsmith_index_u32(~(~(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)]))), 5u)]);
}

