struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 26>;

var<private> global3: array<vec4<bool>, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(global1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(global1.a, vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x))))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a.x, global1.a.x, -765f, global1.a.x)))))));
    var var_0 = 680f;
    let var_1 = !vec3<bool>(true && select(true, true, true), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-3132f + _wgslsmith_f_op_f32(trunc(global1.a.x))) < 878f);
    let var_2 = _wgslsmith_mult_i32(u_input.a.x, -38477i);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a.x)) * global1.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -536f)), global1.a.x, global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1764f)), global1.a, ~arg_0.x > (1u | min(arg_0.x, firstTrailingBit(arg_0.x)))));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, ~arg_0.x), ~(countOneBits(arg_0) >> (vec2<u32>(arg_0.x, 0u) % vec2<u32>(32u)))), select(~vec2<u32>(_wgslsmith_add_u32(1u, arg_0.x), arg_0.x), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, 0u, arg_0.x), abs(vec3<u32>(9891u, arg_0.x, 85596u))), _wgslsmith_mod_u32(47515u, _wgslsmith_add_u32(arg_0.x, arg_0.x))), select(var_1.xz, !vec2<bool>(var_1.x, true), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, true), !vec2<bool>(var_1.x, var_1.x)))));
}

fn func_2() -> Struct_1 {
    global0 = false;
    var var_0 = -vec2<i32>(reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(-60163i, 2147483647i, 0i, 57491i), vec4<i32>(u_input.a.x, -1i, u_input.a.x, 10142i))), u_input.a.x);
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(global1.a.x, 1000f, 1426f, global1.a.x)))), 0i, -(~(~vec4<i32>(-36820i, var_0.x, -19615i, 3733i))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global1.a)))), global2[_wgslsmith_index_u32(~func_3(~vec2<u32>(1u, 1u)), 26u)]);
    var var_2 = Struct_3(var_1.a, firstLeadingBit(-(~var_0.x)) ^ var_1.b, vec4<i32>(_wgslsmith_mod_i32(var_1.c.x, u_input.a.x) ^ _wgslsmith_sub_i32(-var_1.b, i32(-1i) * -75399i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 0i, 6853i, var_0.x) >> (vec4<u32>(4075u, 1u, 0u, 5066u) % vec4<u32>(32u)), reverseBits(var_1.c)), var_0.x, ~(i32(-1i) * -49637i)), var_1.c.x, firstLeadingBit(-7850i)), var_1.a.a, Struct_2(var_1.d));
    var var_3 = Struct_2(var_2.a.a);
    return var_2.d;
}

fn func_1() -> Struct_3 {
    let var_0 = true;
    return Struct_3(Struct_2(func_2()), u_input.a.x, abs(select(reverseBits(vec4<i32>(-1i, u_input.a.x, 2147483647i, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.a.x, u_input.a.x) >> (vec4<u32>(4294967295u, 1u, 24929u, 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -28109i, u_input.a.x, -1i), vec4<i32>(2147483647i, u_input.a.x, -8171i, -19081i))), global3[_wgslsmith_index_u32(1u, 25u)])), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -625f), _wgslsmith_div_f32(global1.a.x, global1.a.x), _wgslsmith_f_op_f32(931f + global1.a.x), _wgslsmith_f_op_f32(-global1.a.x))))), Struct_2(func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 26>();
    var var_0 = func_1();
    let var_1 = any(vec3<bool>(true, false, !any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a.x)) - _wgslsmith_f_op_f32(-global1.a.x));
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(82770u, 1u, 0u, 27965u), vec4<u32>(4294967295u, 0u, 144450u, 38051u), vec4<u32>(1u, 0u, 0u, 4294967295u)))) >> (abs(firstTrailingBit(firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 21968u, 19637u)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(vec2<u32>(12913u, firstTrailingBit(var_3.x)), ~(var_3.yz << (vec2<u32>(var_3.x, var_3.x) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-global1.a.x), ~(~(~(~1u))), var_0.a.a.a.x);
}

