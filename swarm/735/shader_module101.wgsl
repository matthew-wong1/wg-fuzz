struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 20960u, 0u, 1u);

var<private> global2: array<Struct_1, 22>;

var<private> global3: u32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    var var_0 = select(!(!global0.a.a.d.zz), !select(global0.a.a.d.yz, vec2<bool>(any(global0.a.b.d.xy), any(vec4<bool>(global0.a.a.d.x, global0.a.b.d.x, global0.a.b.d.x, global0.a.b.d.x))), global0.a.b.d.yz), global0.a.b.d.yx);
    global0 = Struct_5(Struct_2(Struct_1(vec3<u32>(~53603u, 1u, ~6106u), _wgslsmith_f_op_f32(exp2(global0.a.e)), vec4<u32>(select(0u, global0.a.a.a.x, false), global0.a.a.c.x, global0.a.a.a.x, global1.x ^ u_input.a.x), global0.a.b.d), Struct_1(vec3<u32>(global0.a.a.c.x, abs(global1.x), 4294967295u), _wgslsmith_f_op_f32(global0.a.b.b * _wgslsmith_f_op_f32(-1575f + global0.a.e)), ~vec4<u32>(global1.x, u_input.b, global0.a.b.c.x, global0.a.d.x), select(vec3<bool>(true, var_0.x, global0.a.b.d.x), global0.a.b.d, global0.a.b.d)), _wgslsmith_mult_i32(47103i, -34936i), vec4<u32>(22946u, global1.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.b.c.x, 1u, global0.a.b.a.x, u_input.a.x), _wgslsmith_add_vec4_u32(u_input.a, u_input.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.a.b.b, global0.a.b.b)), global0.a.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -692f) * _wgslsmith_f_op_f32(global0.a.a.b * global0.a.b.b))))));
    let var_1 = select(~(abs(select(global1.xz, vec2<u32>(35758u, 16917u), vec2<bool>(false, var_0.x))) << (reverseBits(~vec2<u32>(0u, 31810u)) % vec2<u32>(32u))), ~(countOneBits(u_input.a.xx >> (global1.zy % vec2<u32>(32u))) >> (global1.zw % vec2<u32>(32u))), _wgslsmith_f_op_f32(global0.a.e + global0.a.b.b) == _wgslsmith_f_op_f32(-187f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-497f, -106f, false)) + _wgslsmith_f_op_f32(exp2(global0.a.a.b)))));
    var var_2 = _wgslsmith_dot_vec4_i32(~(-countOneBits(~vec4<i32>(global0.a.c, -26926i, 1i, u_input.c))), -(~select(vec4<i32>(2147483647i, u_input.c, 39347i, u_input.c), vec4<i32>(0i, 0i, 35180i, -34622i), false)) >> (~global0.a.a.c % vec4<u32>(32u)));
    global2 = array<Struct_1, 22>();
    return u_input.c;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec2<i32> {
    var var_0 = Struct_1(~vec3<u32>(global1.x, ~firstTrailingBit(1u), 0u), 450f, ~_wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, 1u, 1u, 47098u)), ~(vec4<u32>(54180u, 12091u, 1u, global1.x) << (u_input.a % vec4<u32>(32u)))), vec3<bool>(global0.a.a.d.x, arg_1.x && !global0.a.a.d.x, true));
    var var_1 = _wgslsmith_add_vec4_i32((vec4<i32>(global0.a.c, 34410i, global0.a.c, u_input.c) << ((var_0.c & var_0.c) % vec4<u32>(32u))) ^ ~(-vec4<i32>(u_input.c, global0.a.c, u_input.c, 4853i)), firstLeadingBit(vec4<i32>(global0.a.c, func_3(), -global0.a.c, -4220i))) & vec4<i32>(global0.a.c, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(6426i, global0.a.c), u_input.c ^ 20820i), global0.a.c), reverseBits(~(-32971i)), 2147483647i);
    var_0 = global0.a.b;
    global1 = var_0.c;
    let var_2 = global0.a.a;
    return min(var_1.yy, firstTrailingBit(_wgslsmith_div_vec2_i32(abs(var_1.xz), vec2<i32>(abs(var_1.x), max(-1i, global0.a.c)))));
}

fn func_1() -> Struct_5 {
    let var_0 = select(~(vec2<i32>(-7846i, global0.a.c) & _wgslsmith_mult_vec2_i32(~vec2<i32>(global0.a.c, 26787i), ~vec2<i32>(-2147483647i, u_input.c))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1710f, -111f, -2018f))), vec2<bool>(global0.a.a.d.x, global0.a.b.d.x)), global0.a.a.d.yy);
    return Struct_5(Struct_2(Struct_1(countOneBits(~global0.a.a.c.zwz), 1f, ~u_input.a, !select(vec3<bool>(true, global0.a.a.d.x, global0.a.b.d.x), vec3<bool>(global0.a.b.d.x, false, true), vec3<bool>(global0.a.a.d.x, global0.a.a.d.x, global0.a.a.d.x))), global0.a.a, _wgslsmith_mult_i32(~countOneBits(27536i), ~abs(-4130i)), ~global0.a.d, _wgslsmith_f_op_f32(f32(-1f) * -112f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.b.b, 830f) * vec2<f32>(402f, global0.a.a.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.e, 744f)))) - vec2<f32>(global0.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.b.b)))));
    global1 = ~_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.d, u_input.d >> (2398u % 32u), global0.a.b.c.x, u_input.a.x));
    global0 = func_1();
    global3 = 41634u;
    let var_1 = func_1().a.b;
    var var_2 = Struct_5(global0.a);
    var var_3 = _wgslsmith_div_f32(-694f, -1184f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 0i), reverseBits(firstLeadingBit(~vec2<i32>(global0.a.c, u_input.c)))));
}

