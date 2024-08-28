struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    var var_0 = arg_0.x;
    var var_1 = ~countOneBits(~(~(~vec3<u32>(630u, 1u, u_input.c))));
    global1 = select(!vec3<bool>(true, global1.x, global1.x), global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.c, 0u, 1u)), firstTrailingBit(vec3<u32>(82009u, u_input.b, var_1.x))), vec3<u32>(u_input.c, firstLeadingBit(u_input.a), ~var_1.x))), 9u)], vec3<bool>(all(vec2<bool>(true, !global1.x)), global1.x && true, false));
    global1 = global0[_wgslsmith_index_u32(112530u, 9u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1459f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(573f, 1826f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(355f, -345f))))))));
    return 1i;
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec2<i32>) -> vec2<i32> {
    let var_0 = arg_0;
    let var_1 = Struct_4(false, arg_0.b & (~u_input.d | var_0.b));
    global1 = !global0[_wgslsmith_index_u32(~(abs(u_input.b) << (((u_input.c >> (4294967295u % 32u)) & u_input.a) % 32u)), 9u)];
    let var_2 = firstLeadingBit(select(~max(vec4<i32>(0i, -8382i, -23729i, arg_2.x), vec4<i32>(u_input.d, -854i, var_1.b, arg_0.b)), -_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 21766i, var_0.b, arg_0.b), vec4<i32>(arg_0.b, var_0.b, var_0.b, 2147483647i)) & min(-vec4<i32>(2147483647i, u_input.d, arg_2.x, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(-20325i, 1i, arg_2.x, arg_2.x), vec4<i32>(arg_2.x, 26290i, var_1.b, 9086i))), var_1.a));
    global1 = select(select(vec3<bool>(all(global0[_wgslsmith_index_u32(~u_input.c, 9u)]), true, (arg_0.b >= var_0.b) && (arg_1 == arg_1)), !(!vec3<bool>(arg_0.a, true, false)), select(global0[_wgslsmith_index_u32(1u, 9u)], select(vec3<bool>(false, false, var_1.a), select(vec3<bool>(global1.x, arg_0.a, true), vec3<bool>(true, true, true), vec3<bool>(arg_0.a, arg_0.a, false)), arg_0.a), global1.x)), vec3<bool>(_wgslsmith_div_u32(firstTrailingBit(u_input.b), select(u_input.b, u_input.c, arg_0.a)) <= u_input.c, false, any(vec4<bool>(true, global1.x, true, arg_0.a)) || true), select(global0[_wgslsmith_index_u32(u_input.a, 9u)], vec3<bool>(var_1.a, true, all(!global0[_wgslsmith_index_u32(37689u, 9u)])), select(select(!global0[_wgslsmith_index_u32(73276u, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)], var_1.a), !select(vec3<bool>(arg_0.a, true, arg_0.a), global0[_wgslsmith_index_u32(u_input.c, 9u)], global1.x), !select(vec3<bool>(false, var_1.a, arg_0.a), vec3<bool>(false, false, global1.x), global0[_wgslsmith_index_u32(6588u, 9u)]))));
    return var_2.ww;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = func_3(arg_0, _wgslsmith_f_op_f32(sign(2012f)), vec2<i32>(abs(-69240i), -func_2(select(vec3<i32>(arg_0.b, 29553i, 2147483647i), vec3<i32>(arg_1.x, 19952i, 4784i), global0[_wgslsmith_index_u32(1u, 9u)]))));
    return Struct_1(_wgslsmith_div_vec3_i32(~(~(vec3<i32>(0i, u_input.d, 44915i) ^ vec3<i32>(arg_0.b, arg_0.b, -29639i))), vec3<i32>(arg_0.b, abs(-2503i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, -26i), var_0)) & vec3<i32>(0i, ~var_0.x, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~(~max(vec3<i32>(2147483647i, u_input.d, u_input.d) ^ vec3<i32>(-62423i, -9393i, u_input.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(19108i, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.d)))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, i32(-1i) * -4944i), abs(~vec2<i32>(-2147483647i, 25556i))), u_input.d, -1i), global1.x | !all(!vec3<bool>(true, true, global1.x)), Struct_2(true, ~_wgslsmith_add_vec3_u32(abs(vec3<u32>(4294967295u, u_input.b, 50231u)), ~vec3<u32>(0u, u_input.c, 12411u)), func_1(Struct_4(global1.x, u_input.d), firstTrailingBit(max(vec2<i32>(2147483647i, u_input.d), vec2<i32>(u_input.d, 2147483647i))), 48839u), vec4<i32>(min(u_input.d ^ -40290i, ~u_input.d), 39937i, firstTrailingBit(0i >> (0u % 32u)), 0i), 968f), Struct_2(true & (global1.x && true), vec3<u32>(~_wgslsmith_mult_u32(u_input.a, u_input.c), ~0u, ~(1u >> (u_input.a % 32u))), func_1(Struct_4(true, -59584i | u_input.d), vec2<i32>(u_input.d, i32(-1i) * -1i), ~_wgslsmith_mult_u32(u_input.a, u_input.b)), -(vec4<i32>(0i, -10890i, -11771i, 10859i) >> (select(vec4<u32>(u_input.b, 28416u, 16756u, u_input.c), vec4<u32>(u_input.a, 21027u, 0u, 4294967295u), true) % vec4<u32>(32u))), -1000f));
    global0 = array<vec3<bool>, 9>();
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(666f, -359f, var_0.e.e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.e, var_0.e.e, var_0.d.e) * vec3<f32>(-1059f, -1004f, var_0.d.e))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.e, -1466f, 391f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.e, 455f, var_0.d.e) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.e, var_0.e.e, var_0.d.e), vec3<f32>(-775f, -443f, var_0.d.e), vec3<bool>(true, var_0.e.a, var_0.e.a))))))), ~max(0u & u_input.b, 4294967295u) == abs(~(~0u))));
    let var_3 = var_0.d;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.e) - _wgslsmith_f_op_f32(var_3.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -1053f)))), -1582f);
    let var_5 = Struct_3(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.e.c.a.x, 1i, -1i) >> (var_3.b % vec3<u32>(32u)), var_3.d.wwx | vec3<i32>(var_0.b.x, var_3.d.x, var_3.d.x)) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(73419u, var_3.b.x, 1u), vec3<u32>(var_3.b.x, 52453u, u_input.a)), vec3<u32>(55920u, var_3.b.x, 4294967295u), abs(vec3<u32>(2434u, var_3.b.x, var_0.e.b.x))) % vec3<u32>(32u))), ~var_3.c.a, var_3.a, Struct_2(true, var_0.d.b, var_0.e.c, ~select(vec4<i32>(25390i, 21634i, -50091i, var_0.b.x), vec4<i32>(var_3.c.a.x, u_input.d, var_0.a.x, -2147483647i), var_3.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.e.e - _wgslsmith_f_op_f32(-120f + var_4.x)), _wgslsmith_f_op_f32(exp2(var_0.e.e))))), Struct_2(true, ~_wgslsmith_sub_vec3_u32(var_3.b, vec3<u32>(4294967295u, 4294967295u, 66835u)) ^ ~vec3<u32>(var_3.b.x, 1u, var_0.e.b.x), Struct_1(var_3.c.a), vec4<i32>(var_3.c.a.x, 7979i, 9684i, _wgslsmith_sub_i32(6283i, _wgslsmith_dot_vec2_i32(var_3.d.xy, var_0.b.xy))), var_0.e.e));
    global0 = array<vec3<bool>, 9>();
    let var_6 = Struct_4(global1.x | any(select(vec4<bool>(true, false, var_3.a, false), !vec4<bool>(false, true, var_5.e.a, true), vec4<bool>(false, var_5.c, global1.x, global1.x))), var_3.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_3.b.x, var_3.b.x, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u) % vec4<u32>(32u)), vec4<u32>(29776u, u_input.c, 0u, 72222u)))), var_5.d.b.x << (54776u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.e.e - -836f) - _wgslsmith_f_op_f32(sign(var_4.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_5.e.e), var_5.d.e)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_5.e.e, var_0.e.e, var_3.e, var_2.x), vec4<f32>(var_0.d.e, var_2.x, 157f, -546f), vec4<bool>(var_5.c, global1.x, true, true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_3.e, 404f, var_3.e)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-122f, var_5.d.e, var_4.x, -1011f), _wgslsmith_div_vec4_f32(vec4<f32>(907f, -340f, 1387f, -1416f), vec4<f32>(var_3.e, 1404f, var_5.e.e, 474f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_4.x, -1388f, var_3.e))))))));
}

