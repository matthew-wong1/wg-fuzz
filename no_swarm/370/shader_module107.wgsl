struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(0i, i32(-2147483648), 1i, 30578i, -18725i, -1i, -1i, -43712i, 37240i, -32820i, 1i, 0i, -22946i, 47765i, -1i, -32745i, i32(-2147483648), 27349i, 2147483647i, 9321i, 0i, -6086i, -21811i, -1i, 50645i, i32(-2147483648), 18116i, -4359i, 0i, -35161i, -51663i, -7901i);

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_4) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + arg_1.b)), -491f)));
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_3(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f + -215f)) * -436f) + _wgslsmith_f_op_f32(select(-294f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f) + _wgslsmith_f_op_f32(func_2(global2.a, Struct_3(u_input.c, -260f, 4294967295u), 4294967295u, Struct_4(global1.x, true)))), all(vec4<bool>(global1.x, true, true, global1.x)) & true))), global2.b.x);
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(global2.a, -6663i, global0[_wgslsmith_index_u32(37924u, 32u)], global0[_wgslsmith_index_u32(global2.b.x, 32u)]), vec4<i32>(global2.a, -183i, global0[_wgslsmith_index_u32(var_0.c, 32u)], global2.a) << (vec4<u32>(u_input.b.x, 29756u, var_0.c, 45768u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.a, global2.a, 53548i, global2.a), vec4<i32>(global2.a, -28532i, 1i, 256i)), -vec4<i32>(global2.a, global2.a, 12770i, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(global2.a, 0i, global2.a, 241i), vec4<i32>(15387i, 30673i, -69453i, global2.a))))) >> (20541u % 32u);
    global0 = array<i32, 32>();
    var var_2 = select(vec2<i32>(max(~5971i, 1i), var_1), abs(_wgslsmith_add_vec2_i32(~vec2<i32>(global2.a, global0[_wgslsmith_index_u32(global2.b.x, 32u)]), vec2<i32>(-1i, global0[_wgslsmith_index_u32(var_0.c, 32u)]) ^ vec2<i32>(0i, global0[_wgslsmith_index_u32(31562u, 32u)]))), any(vec2<bool>(true, true))) << (u_input.b.zx % vec2<u32>(32u));
    let var_3 = Struct_5(vec3<i32>(-7680i, 19161i, global0[_wgslsmith_index_u32(abs(max(~1u, ~u_input.a)), 32u)]));
    return Struct_5(var_3.a);
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_4(true, global1.x);
    let var_1 = max(~vec2<i32>(2993i, min(35036i, -23844i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(global2.a, 0i), vec2<i32>(global2.a, global0[_wgslsmith_index_u32(1u, 32u)]) >> (u_input.b.zz % vec2<u32>(32u)))) | (reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, global2.a), vec2<i32>(global2.a, global0[_wgslsmith_index_u32(u_input.b.x, 32u)])) << (global2.b.xx % vec2<u32>(32u))) | -vec2<i32>(abs(-7680i), 1i));
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(abs(select(vec4<u32>(global2.b.x, 11124u, 16955u, global2.b.x), vec4<u32>(global2.b.x, u_input.c, 39749u, 0u), vec4<bool>(true, global1.x, true, false))) >> ((abs(vec4<u32>(4294967295u, u_input.b.x, 0u, 120225u)) >> (vec4<u32>(u_input.c, 1u, u_input.b.x, global2.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(0u, 1u, _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(u_input.a, 65902u)), global2.b.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, global2.b.x, 4294967295u, global2.b.x), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(61907u, u_input.a, global2.b.x, global2.b.x), vec4<u32>(u_input.a, 0u, 69554u, u_input.a)), ~global2.b.x, min(1u, 1614u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 70115u), vec3<u32>(4294967295u, 63949u, global2.b.x)))), min(vec4<u32>(global2.b.x, u_input.a, 4294967295u, global2.b.x), vec4<u32>(0u, 0u, u_input.b.x, 4294967295u)) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.b.x, global2.b.x, u_input.b.x, 32148u), vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a)), vec4<u32>(67055u, 15094u, 4294967295u, u_input.c))));
    global1 = select(select(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), global1.x), vec3<bool>(true, true, false), select(select(vec3<bool>(var_0.b, false, global1.x), vec3<bool>(global1.x, global1.x, false), true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), select(!(!vec3<bool>(global1.x, true, true)), select(select(vec3<bool>(false, true, global1.x), vec3<bool>(false, true, false), true), select(vec3<bool>(var_0.b, false, false), vec3<bool>(var_0.b, global1.x, true), global1.x), vec3<bool>(global1.x, true, true)), var_0.b), global1.x), select(select(vec3<bool>(select(global1.x, true, var_0.a), !global1.x, true), !select(vec3<bool>(var_0.a, false, false), vec3<bool>(true, global1.x, true), var_0.b), !(!vec3<bool>(global1.x, true, true))), vec3<bool>(false & any(vec2<bool>(var_0.a, false)), any(vec2<bool>(true, false)), false), vec3<bool>(false, all(vec4<bool>(global1.x, global1.x, global1.x, var_0.b)), true)), false);
    var var_3 = select(!select(!(!vec4<bool>(var_0.b, var_0.b, true, var_0.b)), !vec4<bool>(var_0.a, false, global1.x, var_0.b), !vec4<bool>(global1.x, true, false, global1.x)), select(select(select(select(vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(false, global1.x, true, var_0.b), global1.x), !vec4<bool>(var_0.a, global1.x, var_0.b, false), false), vec4<bool>(true, any(vec4<bool>(global1.x, false, global1.x, true)), true, false), select(vec4<bool>(true, false, false, false), !vec4<bool>(false, false, true, global1.x), !vec4<bool>(global1.x, global1.x, global1.x, var_0.b))), vec4<bool>(global1.x, true, global1.x, true), !(!vec4<bool>(var_0.a, false, false, var_0.b))), !global1.x);
    return ~vec3<u32>(firstTrailingBit(~4294967295u | (0u ^ var_2.x)), ~global2.b.x, 66526u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = 1f;
    global2 = Struct_1(-global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(min(57411u, 9329u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, 1u, 40414u), vec3<u32>(4294967295u, u_input.a, u_input.b.x))), 32u)], func_3());
    var var_2 = Struct_5(~(-_wgslsmith_add_vec3_i32(func_1().a, ~var_0.a)));
    global2 = Struct_1(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a.xx, _wgslsmith_clamp_vec2_i32(var_2.a.yx, vec2<i32>(-18607i, 1i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 32u)], global2.a))), abs(var_2.a.yy) ^ ~var_0.a.xy), -(~(-14748i))), ~_wgslsmith_mod_vec3_u32(select(vec3<u32>(global2.b.x, 22820u, 0u), vec3<u32>(u_input.b.x, 4294967295u, global2.b.x) >> (vec3<u32>(u_input.c, 1u, 1u) % vec3<u32>(32u)), true), global2.b));
    let var_3 = Struct_2(Struct_1(var_2.a.x, firstLeadingBit(~vec3<u32>(1u, u_input.b.x, 36035u))), 632f, Struct_1(~12817i, _wgslsmith_mod_vec3_u32(vec3<u32>(~9824u, _wgslsmith_add_u32(global2.b.x, 20901u), 4294967295u << (global2.b.x % 32u)), u_input.b)));
    var var_4 = Struct_4(global1.x && true, any(select(select(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, false, global1.x), global1.x), !vec3<bool>(false, true, global1.x), vec3<bool>(false, global1.x, global1.x)), vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, true, global2.b.x > 1u))));
    global0 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_0.a & ((~var_0.a >> ((vec3<u32>(global2.b.x, 39016u, 1u) >> (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u))) >> (countOneBits(vec3<u32>(var_3.a.b.x, 0u, var_3.c.b.x)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(func_2(var_0.a.x, Struct_3(~4294967295u, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(1150f))), ~_wgslsmith_div_u32(55386u, 3761u)), u_input.b.x, Struct_4(true, any(select(vec3<bool>(false, true, true), vec3<bool>(global1.x, false, var_4.b), var_4.b))))));
}

