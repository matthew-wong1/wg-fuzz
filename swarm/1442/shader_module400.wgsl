struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(1i, i32(-2147483648)), Struct_1(vec2<f32>(506f, 718f), true), vec3<bool>(false, false, false), Struct_1(vec2<f32>(274f, -1145f), true));

var<private> global1: array<u32, 31> = array<u32, 31>(0u, 1u, 0u, 0u, 4294967295u, 1u, 4294967295u, 1u, 97940u, 1u, 0u, 4294967295u, 0u, 0u, 4294967295u, 15106u, 64841u, 0u, 4294967295u, 1u, 0u, 0u, 79176u, 0u, 0u, 31266u, 23007u, 1u, 43894u, 4294967295u, 1u);

var<private> global2: array<f32, 15> = array<f32, 15>(-650f, 2020f, -1019f, -467f, -1135f, -902f, 252f, 298f, -828f, 635f, -1401f, -1000f, -1749f, -1199f, -1000f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec3<i32>) -> i32 {
    let var_0 = vec2<bool>(select(true, select(global0.b.b && false, !(arg_2.b.x & arg_1.x), all(select(vec3<bool>(false, false, global0.d.b), vec3<bool>(false, arg_1.x, arg_2.b.x), arg_1.ywz))), true), all(!(!vec2<bool>(global0.c.x, false))));
    let var_1 = Struct_2(_wgslsmith_mult_vec2_i32(abs(arg_2.c.zx), _wgslsmith_mult_vec2_i32(~(-u_input.d), vec2<i32>(-1i, -arg_2.c.x))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1527f, global2[_wgslsmith_index_u32(92636u, 15u)]), _wgslsmith_f_op_vec2_f32(-global0.b.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.a)) * arg_0.a)), all(!(!vec4<bool>(false, var_0.x, global0.c.x, true)))), !(!vec3<bool>(all(vec4<bool>(true, arg_2.b.x, false, arg_1.x)), arg_0.a.x <= 1000f, arg_1.x)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1929f)))), _wgslsmith_f_op_f32(1763f * _wgslsmith_f_op_f32(329f - -196f))), select(all(var_0), true, arg_3.x <= u_input.d.x)));
    let var_2 = abs(u_input.d);
    let var_3 = select(arg_1.xyy, arg_1.wwy, vec3<bool>(any(vec2<bool>(false, any(arg_1))), arg_0.b, !arg_1.x));
    var var_4 = arg_2.a;
    return var_2.x;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: i32, arg_3: f32) -> bool {
    global1 = array<u32, 31>();
    global2 = array<f32, 15>();
    var var_0 = Struct_3(countOneBits(max(~(vec3<u32>(global1[_wgslsmith_index_u32(42953u, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], 14149u) << (u_input.b % vec3<u32>(32u))), vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 31u)] << (4294967295u % 32u), _wgslsmith_div_u32(1u, 4294967295u)))), !select(vec4<bool>(!global0.c.x, true, arg_0, true), !select(vec4<bool>(false, arg_0, global0.c.x, arg_0), vec4<bool>(global0.d.b, false, arg_1.x, arg_1.x), global0.c.x), select(!vec4<bool>(arg_0, true, true, true), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(global0.b.b, false, global0.d.b, false), vec4<bool>(arg_0, arg_1.x, true, global0.c.x)), !vec4<bool>(arg_1.x, true, true, arg_1.x))), vec4<i32>(-5451i, 661i, ~(func_3(global0.b, vec4<bool>(true, true, arg_1.x, false), Struct_3(u_input.b, vec4<bool>(global0.b.b, global0.c.x, global0.d.b, false), vec4<i32>(global0.a.x, -39726i, u_input.d.x, global0.a.x), global0.d, true), vec3<i32>(2147483647i, global0.a.x, u_input.d.x)) ^ countOneBits(u_input.d.x)), abs(u_input.d.x)), global0.b, global0.d.b);
    let var_1 = _wgslsmith_mod_i32(-_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(u_input.d.x, -1i, 1i, var_0.c.x)), global0.a.x << (u_input.c % 32u)), ~1i ^ firstTrailingBit(1i)), ~var_0.c.x);
    var var_2 = Struct_3(var_0.a >> (_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 57005u), ~41680u, var_0.a.x), u_input.b) % vec3<u32>(32u)), vec4<bool>(!any(select(vec4<bool>(arg_0, arg_0, false, true), var_0.b, arg_0)), true, all(select(global0.c.xz, global0.c.yx, global0.d.b)), false), vec4<i32>(~1i, func_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1299f, 179f) - vec2<f32>(arg_3, 2038f)), !arg_1.x), vec4<bool>(0u <= u_input.c, global0.d.b, select(false, global0.c.x, true), global0.c.x), Struct_3(u_input.a.zwz, var_0.b, -var_0.c, global0.b, false), vec3<i32>(firstLeadingBit(-18748i), 0i, select(-2147483647i, -2147483647i, true))), reverseBits(global0.a.x), u_input.d.x), Struct_1(global0.b.a, false), false);
    return !(!var_2.b.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = !vec3<bool>(any(!arg_0.c), !func_2(var_0.x, vec2<bool>(arg_0.d.b, var_0.x), ~8368i, _wgslsmith_f_op_f32(exp2(arg_1.d.a.x))), true);
    let var_2 = -3786i;
    global1 = array<u32, 31>();
    var_0 = vec2<bool>(true, var_0.x);
    return Struct_3(vec3<u32>(_wgslsmith_mult_u32(7009u, _wgslsmith_sub_u32(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52271u, 31u)], 31u)], 31u)])), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 40505u), 31u)], max(u_input.b.x, u_input.a.x)) ^ (vec3<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5686u, 31u)], 31u)] & 59540u, 0u) >> (~vec3<u32>(67705u, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], 31u)], 31u)]) % vec3<u32>(32u))), vec4<bool>(select(false, arg_0.d.b, func_2(any(vec4<bool>(false, false, true, true)), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_0.x), var_0.x), -1i, _wgslsmith_f_op_f32(min(1000f, arg_0.d.a.x)))), true, func_2(all(vec3<bool>(true, true, global0.c.x)), !select(vec2<bool>(true, true), vec2<bool>(true, global0.d.b), vec2<bool>(false, arg_1.c.x)), firstTrailingBit(arg_0.a.x) ^ _wgslsmith_add_i32(1i, -43531i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 15u)] - -862f))), var_1.x), vec4<i32>(countOneBits(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 37788i, global0.a.x), vec3<i32>(2147483647i, -10994i, global0.a.x)))), -abs(arg_1.a.x), -14532i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(49597i, global0.a.x, arg_1.a.x), vec3<i32>(arg_0.a.x, global0.a.x, -2045i)) >> ((5457u >> (0u % 32u)) % 32u), -8476i)), global0.b, u_input.b.x != 1191u);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: u32) -> f32 {
    var var_0 = 1u;
    var var_1 = Struct_2(-arg_1.c.yz, arg_1.d, vec3<bool>(!all(global0.c.zy), func_1(Struct_2(-vec2<i32>(0i, 0i), Struct_1(vec2<f32>(global0.b.a.x, -1000f), false), vec3<bool>(false, false, arg_1.e), func_1(Struct_2(vec2<i32>(0i, 1i), arg_1.d, global0.c, global0.d), Struct_2(u_input.d, arg_1.d, arg_1.b.wzz, Struct_1(global0.d.a, false)), vec4<f32>(-996f, global2[_wgslsmith_index_u32(arg_1.a.x, 15u)], global0.b.a.x, global0.d.a.x)).d), Struct_2(vec2<i32>(-11482i, 2147483647i), func_1(Struct_2(vec2<i32>(2147483647i, -2147483647i), global0.d, arg_1.b.yyw, Struct_1(arg_1.d.a, arg_1.e)), Struct_2(global0.a, global0.b, vec3<bool>(global0.d.b, global0.c.x, false), Struct_1(global0.d.a, true)), vec4<f32>(arg_1.d.a.x, arg_1.d.a.x, 2822f, -244f)).d, global0.c, func_1(Struct_2(arg_1.c.wy, global0.b, vec3<bool>(false, global0.d.b, false), Struct_1(arg_1.d.a, false)), Struct_2(global0.a, Struct_1(global0.b.a, true), vec3<bool>(arg_1.e, arg_1.e, false), Struct_1(vec2<f32>(arg_1.d.a.x, -1966f), global0.d.b)), vec4<f32>(global2[_wgslsmith_index_u32(28319u, 15u)], 681f, global0.d.a.x, 237f)).d), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 31u)], 15u)], arg_1.d.a.x, global2[_wgslsmith_index_u32(arg_1.a.x, 15u)], 548f) * vec4<f32>(-267f, global0.b.a.x, 540f, 161f)), vec4<f32>(-947f, arg_1.d.a.x, -804f, arg_1.d.a.x)))).d.b, false), Struct_1(vec2<f32>(1846f, _wgslsmith_f_op_f32(1078f + _wgslsmith_f_op_f32(-arg_1.d.a.x))), all(!(!vec2<bool>(false, global0.d.b)))));
    var_1 = Struct_2(vec2<i32>(-9071i, -2147483647i), arg_1.d, arg_1.b.zxy, func_1(Struct_2(select(vec2<i32>(-4490i, arg_1.c.x), arg_1.c.yy, true) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 42560u), arg_1.a.xy, arg_1.a.zx) % vec2<u32>(32u)), func_1(Struct_2(vec2<i32>(var_1.a.x, u_input.d.x), Struct_1(vec2<f32>(arg_1.d.a.x, var_1.b.a.x), global0.d.b), var_1.c, global0.d), Struct_2(arg_1.c.yw, arg_1.d, vec3<bool>(global0.c.x, global0.d.b, true), var_1.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(542f, global2[_wgslsmith_index_u32(arg_0, 15u)], 2019f, global0.b.a.x))).d, func_1(Struct_2(var_1.a, var_1.b, vec3<bool>(global0.b.b, true, arg_1.d.b), arg_1.d), Struct_2(vec2<i32>(2147483647i, -2147483647i), Struct_1(vec2<f32>(-1782f, global2[_wgslsmith_index_u32(arg_0, 15u)]), false), vec3<bool>(arg_1.e, arg_1.b.x, var_1.d.b), global0.b), vec4<f32>(-1609f, global2[_wgslsmith_index_u32(1u, 15u)], 1187f, global2[_wgslsmith_index_u32(11828u, 15u)])).b.xxw, arg_1.d), Struct_2(_wgslsmith_sub_vec2_i32(countOneBits(u_input.d), _wgslsmith_mod_vec2_i32(arg_1.c.yw, vec2<i32>(global0.a.x, u_input.d.x))), func_1(Struct_2(arg_1.c.xw, global0.b, vec3<bool>(false, true, var_1.b.b), Struct_1(var_1.b.a, false)), Struct_2(vec2<i32>(-39746i, -1644i), Struct_1(vec2<f32>(-1309f, global0.d.a.x), global0.c.x), vec3<bool>(false, true, global0.c.x), Struct_1(vec2<f32>(384f, -1000f), true)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.d.a.x, arg_1.d.a.x, -881f, -461f), vec4<f32>(arg_1.d.a.x, 165f, 355f, -685f)))).d, global0.c, global0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(202f, 335f, global2[_wgslsmith_index_u32(arg_2, 15u)], arg_1.d.a.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1901f, 794f, arg_1.d.a.x, arg_1.d.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(774f, global0.b.a.x, global2[_wgslsmith_index_u32(0u, 15u)], var_1.b.a.x))))).d);
    var var_2 = Struct_2(var_1.a >> (u_input.b.yx % vec2<u32>(32u)), var_1.d, select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, var_1.b.b)), all(global0.c), any(vec3<bool>(false, global0.b.b, false))), true), global0.c, global0.c), func_1(Struct_2(~global0.a, func_1(Struct_2(vec2<i32>(global0.a.x, arg_1.c.x), global0.d, arg_1.b.xzy, Struct_1(vec2<f32>(global0.b.a.x, 1000f), true)), Struct_2(u_input.d, global0.b, vec3<bool>(global0.c.x, arg_1.b.x, true), Struct_1(vec2<f32>(-1857f, global0.b.a.x), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.a.x, global2[_wgslsmith_index_u32(51869u, 15u)], 409f, global2[_wgslsmith_index_u32(41508u, 15u)]))).d, !select(vec3<bool>(global0.d.b, arg_1.b.x, true), arg_1.b.xyw, vec3<bool>(false, false, global0.b.b)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-600f, 1340f) * vec2<f32>(-1154f, -804f)), global0.c.x)), Struct_2(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.d.x, var_1.a.x)), reverseBits(vec2<i32>(1891i, var_1.a.x))), func_1(Struct_2(vec2<i32>(-29173i, global0.a.x), global0.d, arg_1.b.zwy, global0.d), Struct_2(global0.a, Struct_1(var_1.b.a, global0.d.b), arg_1.b.ywy, Struct_1(arg_1.d.a, var_1.b.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(arg_2, 15u)], -1051f, arg_1.d.a.x, 1711f))).d, arg_1.b.yzz, func_1(Struct_2(arg_1.c.wy, global0.d, vec3<bool>(var_1.d.b, global0.b.b, arg_1.b.x), Struct_1(vec2<f32>(arg_1.d.a.x, -492f), global0.b.b)), Struct_2(vec2<i32>(-1i, var_1.a.x), arg_1.d, var_1.c, Struct_1(vec2<f32>(var_1.b.a.x, global2[_wgslsmith_index_u32(arg_0, 15u)]), true)), vec4<f32>(1000f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 15u)], global0.d.a.x, -1000f)).d), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(683f, -1368f)), var_1.b.a.x, _wgslsmith_f_op_f32(trunc(var_1.b.a.x)), -1000f)))).d);
    let var_3 = -var_2.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.b.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2039f + arg_1.d.a.x))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(21747u, 15u)])) * -1530f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-293f)), _wgslsmith_f_op_f32(step(var_1.b.a.x, -943f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 184f;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1057u, 15u)], global0.d.a.x) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1352f, -2701f), vec2<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 15u)], 1000f), true)))) + vec2<f32>(1184f, _wgslsmith_f_op_f32(func_4(u_input.b.x, func_1(Struct_2(global0.a, global0.b, vec3<bool>(global0.d.b, false, false), global0.d), Struct_2(u_input.d, global0.b, global0.c, Struct_1(global0.b.a, global0.d.b)), vec4<f32>(272f, 787f, global0.b.a.x, 379f)), _wgslsmith_sub_u32(0u, global1[_wgslsmith_index_u32(1u, 31u)]))))) + _wgslsmith_f_op_vec2_f32(-global0.d.a));
    let var_2 = !(!select(!vec4<bool>(global0.d.b, global0.c.x, global0.d.b, true), select(!vec4<bool>(global0.c.x, true, true, false), !vec4<bool>(false, global0.d.b, true, global0.b.b), 14152i >= u_input.d.x), -153f <= _wgslsmith_f_op_f32(317f + var_1.x)));
    var var_3 = var_2.x;
    let var_4 = func_1(Struct_2(-global0.a, func_1(Struct_2(_wgslsmith_div_vec2_i32(global0.a, global0.a), global0.d, var_2.wyw, global0.b), Struct_2(vec2<i32>(u_input.d.x, global0.a.x), func_1(Struct_2(u_input.d, global0.d, global0.c, Struct_1(var_1, var_2.x)), Struct_2(u_input.d, Struct_1(vec2<f32>(-425f, global2[_wgslsmith_index_u32(4294967295u, 15u)]), var_2.x), vec3<bool>(var_2.x, false, false), global0.d), vec4<f32>(var_1.x, -1000f, global2[_wgslsmith_index_u32(u_input.b.x, 15u)], global2[_wgslsmith_index_u32(u_input.c, 15u)])).d, vec3<bool>(true, false, var_2.x), func_1(Struct_2(vec2<i32>(global0.a.x, u_input.d.x), global0.d, var_2.wzy, global0.d), Struct_2(global0.a, Struct_1(vec2<f32>(var_1.x, -176f), true), var_2.xyw, Struct_1(vec2<f32>(-940f, global2[_wgslsmith_index_u32(1u, 15u)]), true)), vec4<f32>(var_1.x, 1884f, global0.d.a.x, global0.d.a.x)).d), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-828f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 15u)], var_1.x, -943f), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 518f, global0.d.a.x, -792f), vec4<f32>(494f, 915f, -304f, 451f))))).d, !global0.c, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1078f))), true)), Struct_2(u_input.d & vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1072i, global0.a.x, -1i), vec4<i32>(0i, u_input.d.x, -5184i, u_input.d.x)), 0i), global0.d, select(var_2.xwz, var_2.wwy, true), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(321f, 1713f)), false)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(610f, 117f, global0.b.a.x, 123f), vec4<f32>(333f, var_1.x, 1000f, 1037f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-121f, var_1.x, -442f, -164f)), true))))))).d;
    let x = u_input.a;
    s_output = StorageBuffer(-abs(countOneBits(firstTrailingBit(1i))), _wgslsmith_clamp_i32(global0.a.x, ~min(-1i, u_input.d.x), -2147483647i));
}

