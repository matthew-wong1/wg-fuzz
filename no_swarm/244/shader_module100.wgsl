struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: f32 = -904f;

var<private> global2: array<Struct_1, 1>;

var<private> global3: vec2<bool>;

var<private> global4: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> f32 {
    var var_0 = 57550u;
    global0 = array<Struct_1, 23>();
    let var_1 = 1u;
    global3 = select(global4.b.zx, vec2<bool>(false, any(select(vec4<bool>(global3.x, global4.b.x, global3.x, global4.b.x), global4.b, false)) && global3.x), false);
    global1 = global4.d;
    return _wgslsmith_f_op_f32(f32(-1f) * -1913f);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = abs(_wgslsmith_div_i32(_wgslsmith_add_i32(firstTrailingBit(-u_input.b), 36645i), u_input.b));
    global1 = arg_0;
    var var_1 = global2[_wgslsmith_index_u32(global4.a.x, 1u)];
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.d)) * _wgslsmith_f_op_f32(abs(220f))), _wgslsmith_div_f32(1f, _wgslsmith_div_f32(1624f, global4.d))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.d, -1012f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * var_1.d))), _wgslsmith_f_op_f32(sign(-793f))));
    var var_2 = var_0;
    return true;
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    var var_0 = 2147483647i;
    var var_1 = Struct_1(global4.a, global4.b, func_3(_wgslsmith_f_op_f32(select(global4.d, global4.d, any(vec2<bool>(false, global3.x)) | false)), Struct_1(firstLeadingBit(global4.a), !(!vec4<bool>(arg_0.x, true, false, global3.x)), any(vec4<bool>(false, global3.x, global4.b.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - -237f))), _wgslsmith_f_op_f32(step(-1230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -940f) + _wgslsmith_f_op_f32(trunc(-1101f)))))));
    var var_2 = vec2<u32>(countOneBits(global4.a.x), ~_wgslsmith_mult_u32(min(~23505u, ~1u), _wgslsmith_sub_u32(1u, abs(var_1.a.x))));
    var var_3 = -51698i;
    global3 = select(arg_0.yy, vec2<bool>(!all(var_1.b), !(!any(vec2<bool>(arg_0.x, global3.x)))), vec2<bool>(global4.b.x, global3.x));
    return ~(~3553u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(func_1(global4.b.xzz), _wgslsmith_div_u32(global4.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.x, 16383u, global4.a.x << (4294967295u % 32u), global4.a.x | global4.a.x), vec4<u32>(_wgslsmith_mod_u32(4294967295u, 1u), ~global4.a.x, select(global4.a.x, global4.a.x, global4.c), _wgslsmith_sub_u32(0u, global4.a.x)))), _wgslsmith_dot_vec2_u32(~firstTrailingBit(global4.a.yx), vec2<u32>(global4.a.x, abs(global4.a.x & global4.a.x))));
    global2 = array<Struct_1, 1>();
    global4 = Struct_1(max(global4.a, ~min(global4.a, _wgslsmith_add_vec4_u32(vec4<u32>(1u, 49660u, global4.a.x, 343u), global4.a))), !global4.b, any(!select(global4.b.xx, global4.b.xz, var_0.x > global4.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))));
    let var_1 = Struct_1(vec4<u32>(5367u, ~_wgslsmith_add_u32(~4294967295u, var_0.x), 4294967295u, ~(~75047u ^ var_0.x)), select(select(vec4<bool>(true, global4.c, !global4.c, u_input.a > u_input.a), global4.b, vec4<bool>(global4.b.x, true, global3.x, true)), !(!(!global4.b)), any(select(!vec4<bool>(global4.b.x, global3.x, global4.b.x, true), select(global4.b, global4.b, vec4<bool>(global3.x, true, global3.x, global3.x)), global4.b))), !global3.x, global4.d);
    global3 = !select(select(select(!var_1.b.wx, global4.b.wy, true), var_1.b.yz, global4.b.yx), select(select(!var_1.b.yz, vec2<bool>(global4.b.x, global3.x), global4.b.yz), select(global4.b.zx, select(vec2<bool>(false, var_1.c), global4.b.xy, var_1.b.x), all(vec2<bool>(true, false))), true), global4.b.x);
    global4 = Struct_1(~firstTrailingBit(countOneBits(~vec4<u32>(4294967295u, 4294967295u, 1u, var_1.a.x))), select(select(select(global4.b, select(vec4<bool>(var_1.b.x, true, false, global3.x), vec4<bool>(global3.x, var_1.c, false, true), global3.x), all(var_1.b)), !(!var_1.b), var_1.b), vec4<bool>(global4.c, ~global4.a.x != ~66705u, global3.x, true), global4.b), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, 264f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global4.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a, _wgslsmith_mod_i32(-9651i, _wgslsmith_clamp_i32(u_input.b, u_input.a, u_input.b)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, 0i, u_input.b, u_input.b), vec4<i32>(u_input.b, 2147483647i, u_input.a, u_input.b), vec4<bool>(false, false, global4.c, false)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.b), vec4<i32>(-19805i, 25395i, u_input.a, 1730i)))) & ((-vec3<i32>(-2147483647i, 37847i, u_input.b) | -vec3<i32>(u_input.a, u_input.b, 1i)) | ~_wgslsmith_add_vec3_i32(vec3<i32>(44954i, -1i, 3209i), vec3<i32>(u_input.b, 5074i, u_input.a))));
}

