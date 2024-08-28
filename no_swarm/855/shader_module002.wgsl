struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_i32(-u_input.b, vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.d, u_input.c.x, -2147483647i), vec4<i32>(9660i, u_input.c.x, -1i, u_input.a.x)), -vec4<i32>(0i, -21128i, u_input.b.x, u_input.c.x)), 0i)), vec3<bool>(firstLeadingBit(-2147483647i >> (1u % 32u)) == _wgslsmith_mod_i32(-u_input.b.x, -14529i << (1u % 32u)), false, true), _wgslsmith_mod_i32(-(~(-37829i) | u_input.c.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 0i, u_input.a.x), vec3<i32>(u_input.d, u_input.a.x, 29167i)), -vec3<i32>(u_input.d, u_input.c.x, u_input.d)), vec3<i32>(u_input.c.x, u_input.d, 2147483647i) & ~vec3<i32>(u_input.d, 35483i, -1i))));
    var_0 = Struct_1(~vec2<i32>(-60223i, select(u_input.a.x, -17511i, any(vec4<bool>(true, var_0.b.x, var_0.b.x, true)))), var_0.b, var_0.a.x);
    var var_1 = firstTrailingBit(42849u) & 0u;
    var_1 = _wgslsmith_mult_u32(1u, ~countOneBits(reverseBits(1u)));
    var var_2 = Struct_1(firstLeadingBit(~(-max(vec2<i32>(u_input.a.x, -43045i), u_input.a))), select(!var_0.b, !(!vec3<bool>(false, var_0.b.x, true)), !var_0.b), ~var_0.a.x);
    return !var_0.b;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(u_input.c >> (vec2<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(101607u, 128115u), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(45514u, 54054u)))) % vec2<u32>(32u)), select(func_3(), select(vec3<bool>(true, true, all(vec3<bool>(false, false, true))), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), u_input.a.x);
    var_0 = Struct_1(vec2<i32>(-1i, _wgslsmith_add_i32(u_input.b.x, 2147483647i)), select(var_0.b, !(!var_0.b), true), _wgslsmith_mult_i32(u_input.b.x, -41123i));
    var var_1 = ~(~(~(~select(32966u, 37102u, var_0.b.x))));
    var var_2 = ~(~(~firstLeadingBit(vec3<u32>(1u, 1u, 1u))));
    var var_3 = Struct_1(var_0.a, func_3(), var_0.c);
    return 0i;
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, u_input.b.x), u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(950f - arg_0.x) * arg_0.x))), 49207u);
    var var_1 = Struct_2(-1i, _wgslsmith_f_op_f32(max(var_0.b, var_0.b)), _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, var_0.c), ~(~(~var_0.c))));
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(~(1i | ~u_input.d), _wgslsmith_sub_i32(max(var_1.a, 0i | var_1.a), -2147483647i)), var_1.a, var_1.a, ~func_2());
    var var_3 = vec3<bool>(false & (~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 12i), var_2.yx) != 1954i), false, all(!func_3()));
    let var_4 = vec4<u32>(firstLeadingBit(var_0.c), 12225u, 4294967295u, 38041u);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(reverseBits(~u_input.b.x & u_input.a.x), func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-154f, -831f, 989f, 848f) * vec4<f32>(-272f, -248f, 625f, -932f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-491f, 331f, 394f, -1260f))))), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1087f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), 0u);
    var_0 = Struct_2(2147483647i, _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1395f)) * 2824f))), ~select(_wgslsmith_mod_u32(~var_0.c, var_0.c), _wgslsmith_add_u32(_wgslsmith_div_u32(9141u, 49675u), 1u & var_0.c), _wgslsmith_f_op_f32(min(var_0.b, 1000f)) == _wgslsmith_f_op_f32(max(var_0.b, var_0.b))));
    var var_1 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.c, _wgslsmith_div_u32(var_0.c, var_0.c ^ ~var_0.c), firstTrailingBit(47196u), select(abs(firstLeadingBit(var_0.c)), var_0.c, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(161f, var_0.b)), var_0.b))))));
}

