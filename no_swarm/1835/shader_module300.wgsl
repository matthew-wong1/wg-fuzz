struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false, 57059u, -686f, 72223u, -272f), Struct_1(false, 0u, 322f, 0u, -775f), Struct_1(false, 26844u, 344f, 0u, 2445f), Struct_1(false, 4294967295u, 856f, 1u, 567f), Struct_1(true, 0u, -1142f, 0u, -1081f), Struct_1(true, 4294967295u, -578f, 0u, 924f), Struct_1(true, 150u, -599f, 1u, -1421f), Struct_1(true, 4294967295u, 403f, 4294967295u, 895f), Struct_1(true, 1u, 173f, 19763u, 792f), Struct_1(true, 26107u, 1452f, 1u, 581f), Struct_1(false, 49148u, -1348f, 1u, 380f), Struct_1(true, 79314u, 787f, 2359u, -823f));

var<private> global2: vec4<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(global0.d, 12u)];
    global2 = !vec4<bool>(true, -_wgslsmith_mod_i32(-23368i, -1i) == u_input.a, global0.b >= firstLeadingBit(0u), true);
    let var_1 = vec2<bool>(global0.a, true);
    var var_2 = global1[_wgslsmith_index_u32(arg_1.x, 12u)];
    var var_3 = Struct_1(var_0.a, _wgslsmith_dot_vec3_u32(~(vec3<u32>(1u, u_input.c.x, u_input.d) & firstTrailingBit(arg_1.xxw)), _wgslsmith_mod_vec3_u32(vec3<u32>(25415u, min(arg_1.x, 0u), ~global0.b), vec3<u32>(_wgslsmith_div_u32(0u, var_2.d), 1u, _wgslsmith_add_u32(0u, var_0.d)))), 1000f, abs(~global0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-global0.c))));
    return false;
}

fn func_2() -> f32 {
    let var_0 = !(!vec2<bool>(select(global2.x, all(global2.yy), func_3(vec4<f32>(global0.c, global0.e, global0.e, global0.e), vec4<u32>(4910u, 1u, global0.b, u_input.c.x), global2.zyx)), !(!global0.a)));
    var var_1 = Struct_1(all(!(!global2.yyw)), 47970u, -1548f, _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u), max(~0u, reverseBits(12202u)), abs(29397u) << (_wgslsmith_mod_u32(u_input.c.x, global0.d) % 32u)), vec3<u32>(global0.b, 1u, select(~53945u, ~global0.b, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(807f, _wgslsmith_f_op_f32(min(-479f, -444f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(387f)), _wgslsmith_f_op_f32(f32(-1f) * -233f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0.e))))), global2.x)));
    var var_2 = Struct_1(!(!(!(global0.a || var_1.a))), 0u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1107f + global0.c)))))), abs(1u), var_1.e);
    var var_3 = _wgslsmith_f_op_f32(-global0.e);
    global2 = vec4<bool>(var_0.x, false, true, global2.x);
    return _wgslsmith_f_op_f32(floor(109f));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = arg_1.x;
    let var_1 = global0.c;
    let var_2 = _wgslsmith_mult_vec2_u32(arg_1, arg_1);
    global2 = vec4<bool>(!all(!vec2<bool>(arg_2, false)) == false, true, 36550u != (0u & (_wgslsmith_clamp_u32(7229u, 45699u, var_0) >> (reverseBits(arg_0.d) % 32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.e)) - 1836f))) > _wgslsmith_f_op_f32(f32(-1f) * -823f));
    var var_3 = -_wgslsmith_mod_vec2_i32(reverseBits(~(-vec2<i32>(u_input.a, -33946i))), _wgslsmith_mult_vec2_i32(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -45798i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(21508i, u_input.a)), vec2<i32>(u_input.a, 2147483647i) | vec2<i32>(10990i, 0i), true), vec2<i32>(u_input.a ^ 2147483647i, firstLeadingBit(1i))));
    return ~abs(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(-957f, global0.c)), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1298f - -493f)), -201f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.e, global0.c)))), global0.e)));
    let var_1 = ~(-vec4<i32>(u_input.a, 2147483647i, 1i, _wgslsmith_mult_i32(func_1(global1[_wgslsmith_index_u32(global0.b, 12u)], u_input.c.zx, global2.x, -520f), -u_input.a)));
    global2 = !select(!select(!vec4<bool>(global2.x, true, false, false), select(vec4<bool>(global0.a, false, global0.a, true), vec4<bool>(true, global2.x, true, global0.a), true), all(vec2<bool>(global2.x, global2.x))), select(vec4<bool>(global2.x, true, global0.a, true), !(!vec4<bool>(global0.a, true, true, true)), !vec4<bool>(true, global0.a, global0.a, false)), all(vec2<bool>(!global2.x, false)));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(var_0.wyx, var_0.ywy));
    var var_3 = vec3<bool>(all(global2.wwz), !(global0.a || !(global0.a & global2.x)), !func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-450f, var_2.x, 1365f, var_2.x)), ~(~vec4<u32>(global0.d, u_input.c.x, 4294967295u, 4294967295u)), !vec3<bool>(global0.a, global2.x, global0.a)));
    var_2 = var_0.xwx;
    let x = u_input.a;
    s_output = StorageBuffer(15374u, _wgslsmith_f_op_f32(-var_0.x), ~_wgslsmith_dot_vec4_i32(~var_1, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 9714i, var_1.x), vec4<i32>(u_input.a, -16801i, u_input.a, 0i)) >> ((vec4<u32>(u_input.c.x, 27579u, global0.b, u_input.c.x) & vec4<u32>(u_input.b.x, global0.d, global0.d, global0.d)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, -434f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(999f, var_0.x) - var_0.yy)), vec2<bool>(all(vec4<bool>(global0.a, global0.a, global2.x, var_3.x)), var_2.x >= var_2.x)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, global0.c), _wgslsmith_f_op_f32(global0.c + global0.c)), var_0.x, _wgslsmith_f_op_f32(-var_2.x)))));
}

