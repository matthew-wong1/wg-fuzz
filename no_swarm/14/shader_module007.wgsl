struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(0u, 6301u, 54704u, 51540u, 4294967295u, 1u, 0u, 66102u, 0u, 0u, 4294967295u, 0u, 0u, 52951u, 1u, 1u, 60894u, 59014u, 30784u, 1u, 4294967295u, 0u, 71876u, 0u, 3137u);

var<private> global1: i32 = 0i;

var<private> global2: vec4<u32>;

var<private> global3: array<bool, 3>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_2(Struct_1(~arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-419f + -224f))), Struct_1(max(8848i, abs(1i)) >> (firstTrailingBit(global2.x) % 32u)), Struct_1(11037i), Struct_1(select(-1i | arg_0, arg_0, false)));
    let var_1 = u_input.a.ywx;
    let var_2 = var_0.b;
    global2 = countOneBits(select(u_input.a, ~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.x, var_1.x, 4294967295u, global0[_wgslsmith_index_u32(var_1.x, 25u)]), vec4<u32>(u_input.a.x, 4294967295u, 64050u, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), global3[_wgslsmith_index_u32(4294967295u, 3u)]));
    let var_3 = min(_wgslsmith_clamp_vec3_i32((vec3<i32>(1i, 1i, 1i) >> (u_input.a.xyx % vec3<u32>(32u))) >> (global2.wyw % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(abs(-vec3<i32>(var_0.a.a, 38608i, arg_0)), (vec3<i32>(-19402i, 99762i, var_0.d.a) >> (vec3<u32>(var_1.x, u_input.a.x, global2.x) % vec3<u32>(32u))) >> (~var_1 % vec3<u32>(32u)), min(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, 1i, -1i), vec3<i32>(var_0.c.a, 58752i, arg_0)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.a, arg_0, arg_0), vec3<i32>(-1i, var_0.c.a, arg_0), vec3<i32>(-20394i, 20037i, arg_0)))), abs(vec3<i32>(var_0.e.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(0i, var_0.e.a)), -1i << (var_1.x % 32u)))), -firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(0i, -25040i, var_0.d.a)) | (vec3<i32>(34456i, arg_0, 6908i) >> (var_1 % vec3<u32>(32u)))));
    return global2.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<u32, 25>();
    let var_0 = !(!vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(~1u, 3u)]));
    let var_1 = abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(func_3(-1i), _wgslsmith_mod_u32(1u, 29107u)), _wgslsmith_clamp_vec2_u32(~(~global2.yw), u_input.a.wy, select(select(u_input.a.yz, vec2<u32>(39824u, global2.x), var_0.yz), select(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], u_input.a.x), vec2<u32>(24218u, 4294967295u), true), all(var_0))), u_input.a.yw));
    global2 = firstLeadingBit(u_input.a);
    let var_2 = Struct_1(_wgslsmith_sub_i32(-73455i, -2147483647i));
    return Struct_1(_wgslsmith_mult_i32(arg_1.x, ~((35297i >> (0u % 32u)) | var_2.a)));
}

fn func_1() -> Struct_2 {
    global2 = ~countOneBits(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(global2.x, 4294967295u, global2.x, global2.x), _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(22367u, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 56112u, u_input.a.x))), u_input.a, u_input.a));
    let var_0 = ~vec2<u32>(20448u, 0u) & u_input.a.xw;
    let var_1 = i32(-1i) * -1i;
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(global2.x, u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 0u, var_0.x), u_input.a ^ ~u_input.a)), global0[_wgslsmith_index_u32(98187u, 25u)], _wgslsmith_add_u32(firstLeadingBit(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(14033u, 25u)], u_input.a.x)), ~u_input.a.x | global0[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_sub_u32(4294967295u, (~0u & u_input.a.x) << (firstTrailingBit(_wgslsmith_div_u32(89257u, 1u)) % 32u)));
    let var_3 = Struct_2(func_2(min(-firstTrailingBit(vec4<i32>(-2147483647i, var_1, var_1, 47945i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_1, 1i, var_1, var_1), vec4<i32>(-25067i, var_1, 1i, var_1))), ~(-vec2<i32>(-1i, 0i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1339f, _wgslsmith_f_op_f32(815f + _wgslsmith_f_op_f32(floor(795f)))) * _wgslsmith_f_op_f32(ceil(-425f))), func_2(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 16264i, var_1, var_1), vec4<i32>(var_1, var_1, -2147483647i, var_1), vec4<i32>(2147483647i, 0i, var_1, var_1)), ~vec4<i32>(var_1, 2147483647i, 2147483647i, -1i), vec4<i32>(var_1, var_1, -2147483647i, -48667i)), -firstLeadingBit(vec4<i32>(4458i, var_1, 13435i, var_1))), vec2<i32>(14325i, var_1)), func_2(~vec4<i32>(_wgslsmith_add_i32(0i, var_1), var_1 ^ var_1, var_1 & 56071i, -2147483647i), select(firstTrailingBit(-vec2<i32>(var_1, var_1)), vec2<i32>(~var_1, abs(var_1)), select(!vec2<bool>(global3[_wgslsmith_index_u32(0u, 3u)], true), !vec2<bool>(global3[_wgslsmith_index_u32(1u, 3u)], false), select(vec2<bool>(true, global3[_wgslsmith_index_u32(28725u, 3u)]), vec2<bool>(global3[_wgslsmith_index_u32(3984u, 3u)], false), true)))), func_2(vec4<i32>(min(var_1, -1i) ^ 2147483647i, var_1, -1i, 1i), ~vec2<i32>(~var_1, -var_1)));
    return Struct_2(func_2(countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.e.a, var_3.c.a, -53459i, -43635i), vec4<i32>(-11973i, -8563i, -13768i, 1i)), firstLeadingBit(vec4<i32>(73992i, 76669i, var_1, var_3.a.a)))), reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(5555i, 1i), vec2<i32>(1i, 2147483647i)) ^ select(vec2<i32>(2147483647i, 0i), vec2<i32>(var_1, var_1), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(select(var_3.b, _wgslsmith_f_op_f32(exp2(var_3.b)), all(select(select(vec2<bool>(global3[_wgslsmith_index_u32(29362u, 3u)], global3[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec2<bool>(false, false), vec2<bool>(true, false)), !vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 3u)], true), global3[_wgslsmith_index_u32(4294967295u, 3u)])))), var_3.c, func_2(_wgslsmith_add_vec4_i32(abs(-vec4<i32>(2285i, var_3.d.a, -9481i, var_1)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, var_1, var_3.a.a), vec4<i32>(20568i, var_1, var_3.e.a, var_3.e.a), vec4<i32>(var_1, 2147483647i, var_3.c.a, var_3.c.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(19468i, var_3.d.a, 1i, var_1), vec4<i32>(var_1, 40962i, 31852i, 1i), vec4<i32>(-2147483647i, var_3.e.a, -16922i, var_1)), select(global3[_wgslsmith_index_u32(4294967295u, 3u)], true, true))), vec2<i32>(1i, ~firstLeadingBit(0i))), var_3.e);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    return arg_2.d;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = select(vec3<bool>(!any(!vec4<bool>(global3[_wgslsmith_index_u32(10109u, 3u)], global3[_wgslsmith_index_u32(global2.x, 3u)], global3[_wgslsmith_index_u32(1u, 3u)], false)), global3[_wgslsmith_index_u32(~1u, 3u)], arg_0.b > -592f), vec3<bool>(global3[_wgslsmith_index_u32(countOneBits(39018u), 3u)], arg_0.b >= 1022f, false), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(112572u, 4297u, 0u)), max(u_input.a.yyy | vec3<u32>(0u, global0[_wgslsmith_index_u32(global2.x, 25u)], 0u), ~u_input.a.wyw)), 25u)], 25u)], 3u)]);
    global0 = array<u32, 25>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b - -359f), _wgslsmith_f_op_f32(-247f + 916f))), arg_0.b, _wgslsmith_f_op_f32(arg_0.b + arg_0.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -170f))));
    global3 = array<bool, 3>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.xyw * _wgslsmith_f_op_vec3_f32(var_1.wwy * vec3<f32>(arg_0.b, 375f, var_1.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.yxz - _wgslsmith_f_op_vec3_f32(vec3<f32>(-453f, arg_0.b, arg_0.b) * vec3<f32>(var_1.x, arg_0.b, var_1.x))), var_1.yyy)) - _wgslsmith_f_op_vec3_f32(-var_1.zww));
    return Struct_2(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, 1449f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + 307f), _wgslsmith_f_op_f32(min(-439f, arg_0.b)))), -1129f), func_4(func_1().c, vec3<bool>(true, var_0.x, true), func_1(), arg_0), func_4(Struct_1(arg_0.c.a), !var_0, Struct_2(arg_0.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1848f, arg_0.b)), _wgslsmith_f_op_f32(-arg_0.b)), func_2(reverseBits(vec4<i32>(arg_0.e.a, arg_0.d.a, -5899i, arg_0.c.a)), -vec2<i32>(arg_0.d.a, arg_0.e.a)), Struct_1(arg_0.c.a ^ arg_0.d.a), Struct_1(max(arg_0.a.a, -2147483647i))), Struct_2(arg_0.c, 937f, arg_0.d, Struct_1(_wgslsmith_add_i32(arg_0.a.a, arg_0.e.a)), Struct_1(-2147483647i))), func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.a, arg_0.d.a), vec2<i32>(arg_0.e.a, -35358i)), 5369i ^ arg_0.c.a, reverseBits(arg_0.a.a), arg_0.c.a >> (22991u % 32u)), (vec4<i32>(2147483647i, 2147483647i, -6433i, 1i) & vec4<i32>(arg_0.e.a, arg_0.e.a, arg_0.a.a, -36801i)) | _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.e.a, 2147483647i, 1321i, -3305i), vec4<i32>(-37152i, arg_0.d.a, arg_0.c.a, arg_0.d.a))), max(~_wgslsmith_add_vec2_i32(vec2<i32>(1i, 56036i), vec2<i32>(-5938i, arg_0.e.a)), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-8375i, arg_0.c.a)), select(vec2<i32>(arg_0.c.a, arg_0.c.a), vec2<i32>(arg_0.c.a, 1i), vec2<bool>(true, false)), _wgslsmith_mult_vec2_i32(vec2<i32>(40367i, 5704i), vec2<i32>(526i, arg_0.e.a))))));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(firstTrailingBit(36525u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(global2.x, 1063u, u_input.a.x), u_input.a.zzz, arg_2 != arg_0.b), ~(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 0u, 0u) & vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], global2.x)))) >= (~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global2.x, global2.x), vec4<u32>(3791u, u_input.a.x, global0[_wgslsmith_index_u32(1u, 25u)], global2.x) ^ u_input.a) ^ global2.x);
    global0 = array<u32, 25>();
    global3 = array<bool, 3>();
    let var_1 = ~u_input.a;
    let var_2 = u_input.a.wxw;
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 3>();
    global2 = u_input.a;
    global1 = 0i;
    let var_0 = ~(vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)] | ~global0[_wgslsmith_index_u32(36365u, 25u)], _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4294967295u), global2.xz), ~u_input.a.x) ^ u_input.a.zxy);
    let var_1 = func_6(func_5(Struct_2(func_4(Struct_1(-1i), vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 25u)], 3u)], global3[_wgslsmith_index_u32(var_0.x, 3u)], false), func_1(), Struct_2(Struct_1(2147483647i), -950f, Struct_1(-2147483647i), Struct_1(21115i), Struct_1(20081i))), _wgslsmith_f_op_f32(f32(-1f) * -420f), func_2(vec4<i32>(-42520i, -39630i, 0i, 26453i), -vec2<i32>(-6370i, -60685i)), Struct_1(1i), Struct_1(func_2(vec4<i32>(-1i, 15223i, -26315i, -19915i), vec2<i32>(43701i, -8002i)).a))), abs(countOneBits(vec4<i32>(~(-18707i), _wgslsmith_mod_i32(16053i, 2147483647i), -9193i, 2147483647i))), 840f);
    global1 = _wgslsmith_div_i32(select(var_1.a, ~var_1.a, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, 4157u), 3u)]) | 0i, abs(-(~(~var_1.a))));
    let var_2 = select(vec4<bool>(true || (func_3(var_1.a) == abs(var_0.x)), !(!any(vec4<bool>(false, false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 3u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38702u, 25u)], 3u)]))), true, ((5761i < var_1.a) != global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, global2.x, 43779u), 3u)]) & (all(vec2<bool>(true, true)) & true)), !select(vec4<bool>(true, global3[_wgslsmith_index_u32(~61175u, 3u)], all(vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 25u)], 3u)])), true), select(!vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(global2.x, 3u)]), vec4<bool>(true, true, true, true), false | global3[_wgslsmith_index_u32(20195u, 3u)]), global3[_wgslsmith_index_u32(~(u_input.a.x & 0u), 3u)]), global3[_wgslsmith_index_u32(48155u, 3u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, u_input.a);
}

