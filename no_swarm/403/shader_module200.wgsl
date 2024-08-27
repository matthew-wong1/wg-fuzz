struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<u32>) -> vec2<i32> {
    global1 = vec4<bool>(false, any(!global1.xw), true, 15716u <= ~u_input.b);
    global0 = array<f32, 4>();
    global1 = !(!(!(!(!vec4<bool>(global1.x, global1.x, global1.x, true)))));
    global0 = array<f32, 4>();
    global1 = !(!select(select(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(true, true, global1.x, global1.x), true), !vec4<bool>(global1.x, true, global1.x, global1.x), global1.x), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, global1.x), true), true));
    return select(-(~(-vec2<i32>(2147483647i, 2147483647i))), vec2<i32>(_wgslsmith_mod_i32(-2147483647i, ~(-34770i)) >> (firstTrailingBit(reverseBits(u_input.a.x)) % 32u), max(~(-20735i), 24934i)), !global1.zx);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = vec4<bool>(any(!global1.zw), any(global1.wz), global1.x, true);
    let var_1 = Struct_1(-arg_3.a);
    var var_2 = vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(986f + 1214f));
    var var_3 = select(u_input.a.x, _wgslsmith_mod_u32(~(~u_input.a.x), u_input.b), select(global1.x, any(!select(var_0.zy, global1.xw, vec2<bool>(true, true))), all(var_0.zy)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1317f * 1f));
    return _wgslsmith_div_vec3_u32(max(vec3<u32>(~1u, 1u, firstLeadingBit(~u_input.a.x)), select(min(max(vec3<u32>(85961u, u_input.a.x, 1u), vec3<u32>(u_input.b, 1u, 0u)), ~vec3<u32>(16189u, u_input.b, 40580u)), ~min(vec3<u32>(4294967295u, 57492u, u_input.b), vec3<u32>(u_input.a.x, 83421u, u_input.a.x)), select(select(var_0.wzw, global1.yyx, var_0.zyz), select(global1.yxx, vec3<bool>(true, var_0.x, true), var_0.x), var_0.x || var_0.x))), abs(_wgslsmith_div_vec3_u32(~vec3<u32>(118676u, 67151u, u_input.b), ~(vec3<u32>(u_input.b, u_input.a.x, u_input.b) | vec3<u32>(u_input.a.x, u_input.b, u_input.a.x)))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec2_i32(-abs(vec2<i32>(-43119i, -55737i)), func_2(~vec2<u32>(0u, 28634u))) << (~((vec2<u32>(u_input.b, 4294967295u) | vec2<u32>(u_input.b, 60398u)) >> (vec2<u32>(~u_input.a.x, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = array<f32, 4>();
    let var_1 = _wgslsmith_f_op_f32(floor(-1784f));
    var var_2 = ~_wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(func_3(var_1, global0[_wgslsmith_index_u32(0u, 4u)], Struct_3(vec3<f32>(290f, var_1, 1373f)), Struct_1(var_0.x)), vec3<u32>(32416u, u_input.a.x, u_input.b)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, u_input.b) ^ vec3<u32>(95217u, u_input.a.x, u_input.b), vec3<u32>(u_input.b, 1u, 4294967295u) ^ vec3<u32>(u_input.b, 4294967295u, 23308u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(21068u, u_input.b, u_input.a.x), vec3<u32>(1u, 50220u, 17717u), vec3<u32>(1u, 4294967295u, u_input.b))));
    var var_3 = Struct_1(0i);
    return Struct_2(13344u, vec2<i32>(-1i) * -countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-51583i, var_0.x), vec2<i32>(var_0.x, -41583i))), Struct_1(reverseBits(reverseBits(abs(28254i)))), Struct_1(-2225i), select(vec2<bool>(false, true), global1.wy, false));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2) -> vec4<bool> {
    global1 = !(!vec4<bool>(any(func_1().e), true, false, arg_1));
    let var_0 = arg_2;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(31981u, 4u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.a, 4u)], -1114f))))));
    global0 = array<f32, 4>();
    var var_2 = func_1().d;
    return !(!(!select(!vec4<bool>(false, var_0.e.x, false, global1.x), select(vec4<bool>(arg_2.e.x, true, false, true), vec4<bool>(arg_1, arg_1, true, var_0.e.x), arg_2.e.x), all(vec2<bool>(global1.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global0 = array<f32, 4>();
    global1 = func_4(vec2<u32>(~4294967295u & u_input.b, 22890u), global1.x, func_1());
    global1 = func_4(vec2<u32>(~(~56543u), _wgslsmith_div_u32(abs(47244u & u_input.b), countOneBits(func_3(625f, 239f, Struct_3(vec3<f32>(global0[_wgslsmith_index_u32(var_0, 4u)], 322f, global0[_wgslsmith_index_u32(15638u, 4u)])), Struct_1(-24833i)).x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(30834u, 4u)] * global0[_wgslsmith_index_u32(var_0, 4u)]))) < 1f, Struct_2(u_input.b, max(vec2<i32>(i32(-1i) * -17220i, 2147483647i), _wgslsmith_add_vec2_i32(-vec2<i32>(3571i, 2147483647i), vec2<i32>(1i, 1i))), Struct_1(1i), func_1().d, vec2<bool>(select(!global1.x, global1.x, true), true)));
    global0 = array<f32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 4u)]) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 4u)]))))), ~(min(vec3<u32>(u_input.a.x, 77272u, u_input.b), ~vec3<u32>(u_input.b, var_0, 4008u)) >> (vec3<u32>(~0u, var_0, ~0u) % vec3<u32>(32u))), firstLeadingBit(vec2<i32>(~_wgslsmith_sub_i32(-18283i, -2147483647i), 2147483647i)));
}

