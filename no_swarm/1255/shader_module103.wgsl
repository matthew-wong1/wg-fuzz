struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(34551u, 1u, 25007u));

var<private> global1: array<i32, 15> = array<i32, 15>(-14893i, -11392i, -1i, 44051i, i32(-2147483648), 8361i, 69177i, -6262i, 1i, -1i, -1i, -50110i, 1i, 2147483647i, i32(-2147483648));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>) -> f32 {
    let var_0 = u_input.c.x;
    let var_1 = vec3<u32>(1u, firstTrailingBit(~(~max(var_0, 4294967295u))), abs(0u));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(730f, -1599f)), 1416f)) + -898f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(trunc(432f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-514f, 298f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-787f, 826f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -888f) + _wgslsmith_f_op_f32(f32(-1f) * -970f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1695f, 152f)), _wgslsmith_f_op_f32(f32(-1f) * -2605f))) + _wgslsmith_f_op_f32(681f + _wgslsmith_div_f32(-1222f, -1490f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1838f + 399f) * _wgslsmith_f_op_f32(-921f - -1285f)), 1096f)));
    var var_3 = _wgslsmith_mod_u32(~(~global0.a.x | var_1.x), u_input.c.x >> (0u % 32u));
    global1 = array<i32, 15>();
    return _wgslsmith_f_op_f32(trunc(var_2.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = vec3<bool>(select(true, arg_1 < global1[_wgslsmith_index_u32(0u, 15u)], true), true, true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-429f, 959f, arg_0.x)))));
    global0 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    var var_3 = arg_3.b;
    return -2147483647i;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = u_input.b;
    var var_1 = min(i32(-1i) * -29218i, func_4(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(arg_3, arg_3, arg_3, false), u_input.a)), -360f, _wgslsmith_f_op_f32(abs(605f))), 35010i, Struct_1(vec2<u32>(4294967295u, u_input.c.x) >> (global0.a % vec2<u32>(32u)), vec3<u32>(global0.b.x, 5763u, 96429u)), Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.b.x, 55462u), vec2<u32>(4294967295u, global0.b.x)), ~vec3<u32>(u_input.c.x, 1u, u_input.c.x)))) & firstTrailingBit(-((var_0 | 1i) >> (_wgslsmith_mod_u32(u_input.c.x, global0.b.x) % 32u)));
    let var_2 = any(vec2<bool>(true, false));
    return Struct_1(reverseBits(u_input.c) >> (~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.c.x, 5639u)), ~global0.a) % vec2<u32>(32u)), global0.b);
}

fn func_5(arg_0: Struct_1) -> vec2<u32> {
    global1 = array<i32, 15>();
    let var_0 = vec3<u32>(countOneBits(1u), 0u, 18145u);
    var var_1 = firstLeadingBit(select(-(~vec4<i32>(-2548i, 15041i, global1[_wgslsmith_index_u32(58744u, 15u)], 2147483647i)), vec4<i32>(min(46563i, global1[_wgslsmith_index_u32(87827u, 15u)]), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(var_0.x, 15u)]), i32(-1i) * -2147483647i, ~global1[_wgslsmith_index_u32(arg_0.b.x, 15u)]), vec4<bool>(true, true, true, true)) << (abs(select(vec4<u32>(55859u, u_input.c.x, u_input.c.x, 1u), select(vec4<u32>(global0.a.x, 88187u, var_0.x, var_0.x), vec4<u32>(var_0.x, 19834u, 1u, 49696u), true), vec4<bool>(true, true, true, true))) % vec4<u32>(32u)));
    var var_2 = Struct_2(arg_0, select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), abs(117178u) < max(58576u, var_0.x)), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), !select(false, false, false)), select(vec3<bool>(false, true, false), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), false)), ~(vec2<u32>(abs(global0.b.x), min(u_input.c.x, 33230u)) >> (_wgslsmith_sub_vec2_u32(global0.a & vec2<u32>(arg_0.a.x, 0u), select(vec2<u32>(1u, 0u), arg_0.b.yz, vec2<bool>(false, false))) % vec2<u32>(32u))));
    global0 = func_2(any(!(!(!vec4<bool>(false, var_2.b.x, var_2.b.x, var_2.b.x)))), !all(!vec3<bool>(true, var_2.b.x, false)), !all(vec4<bool>(true, !var_2.b.x, arg_0.b.x > global0.a.x, true)), var_2.b.x);
    return abs(countOneBits(global0.a));
}

fn func_1() -> f32 {
    global0 = Struct_1(func_5(func_2(true, false, true, all(vec3<bool>(false, false, false)))), ~firstLeadingBit(~vec3<u32>(4294967295u, 1u, global0.a.x)));
    global1 = array<i32, 15>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-225f, 1288f) * _wgslsmith_f_op_f32(f32(-1f) * -657f))), _wgslsmith_f_op_f32(round(1644f)), any(vec2<bool>(true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], -32308i, global1[_wgslsmith_index_u32(4294967295u, 15u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(12920i, global1[_wgslsmith_index_u32(global0.b.x, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec3<i32>(-2138i, 34316i, 26050i))), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(1u, 15u)], u_input.b), vec3<i32>(-13239i, 2147483647i, global1[_wgslsmith_index_u32(4294967295u, 15u)])) | max(vec3<i32>(-1i, 2147483647i, u_input.a.x), vec3<i32>(u_input.b, 2147483647i, 70142i))) << (4294967295u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), -867f))), -176f, _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c), ~select(u_input.c, global0.a, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1263f * 2159f)), 1608f))), vec4<u32>(global0.b.x, 0u, 21443u, 0u));
}

