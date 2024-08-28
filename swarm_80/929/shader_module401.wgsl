struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<vec2<bool>, 20>;

var<private> global2: array<Struct_2, 4>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = select(false, true, !any(vec3<bool>(true, true, true)) || (true & (true || any(vec2<bool>(true, true)))));
    let var_1 = u_input.a.x;
    global1 = array<vec2<bool>, 20>();
    var var_2 = _wgslsmith_dot_vec3_i32(-vec3<i32>(-61089i, max(u_input.b ^ 0i, u_input.b), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 2147483647i), vec2<i32>(u_input.b, u_input.b) | vec2<i32>(u_input.b, u_input.b))), ~(~(-vec3<i32>(u_input.b, u_input.b, u_input.b) | ~vec3<i32>(u_input.b, 33835i, u_input.b))));
    let var_3 = countOneBits(0u) >> (_wgslsmith_div_u32(var_1, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(arg_0.a.yz), ~arg_0.a.zz)) % 32u);
    return _wgslsmith_sub_i32(57872i, -abs(-1i));
}

fn func_2() -> bool {
    var var_0 = u_input.a;
    global2 = array<Struct_2, 4>();
    global0 = array<Struct_1, 8>();
    let var_1 = vec3<bool>(_wgslsmith_add_i32(0i, 51814i) <= (u_input.b & func_3(Struct_1(u_input.a.xyx))), true, (116f != _wgslsmith_f_op_f32(floor(-1606f))) & all(vec3<bool>(true, false, u_input.a.x != 75677u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-539f, 593f, -1217f, 403f))) * vec4<f32>(305f, 1000f, 114f, 522f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-606f, 840f, -595f, 380f) + vec4<f32>(-1676f, 136f, 1250f, 492f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 633f, -1000f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(617f, 1649f, -232f, -130f) - vec4<f32>(278f, -696f, 1775f, -834f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1010f, -262f, 1070f, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(468f, -1083f, -255f, 1000f) + vec4<f32>(-729f, -535f, 759f, -1114f))))));
    return var_1.x;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = select(!vec4<bool>(any(!global1[_wgslsmith_index_u32(1u, 20u)]), all(vec2<bool>(true, true)) == all(vec4<bool>(false, false, true, false)), false, true), select(vec4<bool>(func_2(), false, !(arg_3.x < arg_3.x), 90137i >= _wgslsmith_sub_i32(u_input.b, u_input.b)), !vec4<bool>(select(true, false, false), false, true, true), vec4<bool>(true, true, true, true)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(334f, -919f)) * 877f) >= arg_3.x));
    var var_1 = false;
    var_1 = (reverseBits(arg_2.b.a.x) ^ (arg_1.c.a.x ^ 54976u)) != arg_1.b.a.x;
    var_1 = var_0.x;
    let var_2 = all(vec3<bool>(select(var_0.x, var_0.x, true) & (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), vec4<i32>(94945i, 48559i, u_input.b, 14205i)) >= -9295i), !(_wgslsmith_f_op_f32(max(arg_3.x, arg_3.x)) >= _wgslsmith_div_f32(arg_3.x, arg_3.x)), select(!var_0.x, var_0.x, var_0.x | var_0.x)));
    return Struct_1(vec3<u32>(min(1u, reverseBits(arg_0)), ~(arg_0 | 70629u), firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, arg_1.b.a.x))) << (u_input.a.yyw % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = (arg_1.a.xy << (arg_0.a.zz % vec2<u32>(32u))) ^ countOneBits(max(reverseBits(arg_0.a.zz), vec2<u32>(1u, 98083u)));
    global0 = array<Struct_1, 8>();
    let var_1 = select(_wgslsmith_add_u32(arg_0.a.x, ~(~firstLeadingBit(61622u))), _wgslsmith_mod_u32(2331u, ~u_input.a.x), !(0u < arg_0.a.x));
    global2 = array<Struct_2, 4>();
    global2 = array<Struct_2, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1753f)))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(1u, Struct_2(max(vec2<u32>(u_input.a.x, 0u), vec2<u32>(87293u, 4294967295u)), global0[_wgslsmith_index_u32(reverseBits(1u), 8u)], Struct_1(vec3<u32>(1u, u_input.a.x, u_input.a.x))), global2[_wgslsmith_index_u32(~u_input.a.x, 4u)], vec2<f32>(_wgslsmith_f_op_f32(sign(453f)), -546f)), global0[_wgslsmith_index_u32(~1u, 8u)]) | true;
    let var_1 = _wgslsmith_mult_i32(max(u_input.b, ~(~(~u_input.b))), reverseBits(max(firstLeadingBit(_wgslsmith_add_i32(u_input.b, 2147483647i)), u_input.b)));
    var var_2 = !select(vec4<bool>(any(vec4<bool>(true, true, false, false)) && false, !func_2(), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))), any(vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), false);
    var var_3 = select(vec2<bool>(!var_2.x, !var_2.x), !var_2.zx, var_2.zw);
    var_0 = abs(u_input.b) <= _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(1i, 1i)), -vec2<i32>(2147483647i, -2147483647i) | _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, var_1), vec2<i32>(-1i, 0i), vec2<i32>(1i, var_1))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, 0i), vec2<i32>(var_1, u_input.b) >> (vec2<u32>(33841u, u_input.a.x) % vec2<u32>(32u)), -vec2<i32>(u_input.b, 24056i)) | vec2<i32>(0i, -7771i));
    var_0 = var_3.x;
    var var_4 = global2[_wgslsmith_index_u32(0u, 4u)];
    global1 = array<vec2<bool>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 28298i) | vec2<i32>(u_input.b & 2147483647i, firstTrailingBit(var_1)), -firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-2147483647i, u_input.b)))), ~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(8304u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(4294967295u, var_4.b.a.x, var_4.a.x, var_4.b.a.x), ~u_input.a)), var_1, -123f, var_1);
}

