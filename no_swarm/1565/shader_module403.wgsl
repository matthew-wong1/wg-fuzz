struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(32063i, true), Struct_1(0i, false), Struct_1(-33754i, false), Struct_1(-10198i, false), Struct_1(0i, false), Struct_1(2147483647i, true), Struct_1(i32(-2147483648), false), Struct_1(-10377i, true), Struct_1(0i, true), Struct_1(-71534i, true), Struct_1(10245i, true), Struct_1(16021i, true), Struct_1(16034i, false), Struct_1(-14397i, false), Struct_1(25627i, false), Struct_1(i32(-2147483648), true), Struct_1(0i, true), Struct_1(0i, false), Struct_1(-1i, true), Struct_1(18655i, false), Struct_1(-1i, false), Struct_1(-4803i, true), Struct_1(16644i, true), Struct_1(1i, true), Struct_1(46333i, false), Struct_1(i32(-2147483648), true), Struct_1(10468i, false));

var<private> global1: vec3<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 27>();
    let var_0 = arg_1;
    let var_1 = false;
    global0 = array<Struct_1, 27>();
    global1 = ~(~(~vec3<u32>(~3197u, ~11829u, _wgslsmith_mult_u32(5958u, 70020u))));
    return abs(global1.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = _wgslsmith_div_vec3_u32(select(~(~vec3<u32>(2685u, 4294967295u, 42501u)), vec3<u32>(arg_0, _wgslsmith_mod_u32(global1.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 6832u, 1u), vec3<u32>(u_input.a, 1040u, arg_0))), vec3<bool>(true, all(vec3<bool>(false, false, false)), false)), vec3<u32>(4294967295u, _wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(global1.x, 78450u)), 24815u)) | vec3<u32>(~arg_0, _wgslsmith_sub_u32(~(arg_0 & 0u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(23381u, arg_0), 1u)), _wgslsmith_div_u32(func_3(150f, global0[_wgslsmith_index_u32(u_input.c, 27u)]), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4498u, arg_0, 4294967295u), vec4<u32>(arg_0, arg_0, u_input.a, 1u))));
    var var_0 = ~arg_0;
    let var_1 = global0[_wgslsmith_index_u32(14842u, 27u)];
    let var_2 = Struct_1(abs(~(~_wgslsmith_mult_i32(0i, var_1.a))), var_1.b);
    let var_3 = var_2;
    return var_2;
}

fn func_1() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 27u)];
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(~(~global1.xx)), reverseBits(global1.zz)), global1.zx), 27u)];
    var var_2 = func_2(global1.x);
    let var_3 = -(~vec4<i32>(i32(-1i) * -22493i, _wgslsmith_div_i32(u_input.b, -31996i), abs(-7058i), var_2.a) | (~select(vec4<i32>(694i, u_input.b, var_1.a, 1i), vec4<i32>(u_input.b, u_input.b, 25037i, 0i), vec4<bool>(true, true, var_1.b, false)) << (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, u_input.a), vec4<u32>(u_input.c, 64959u, 6589u, global1.x)), vec4<u32>(u_input.c, u_input.c, 1u, global1.x) & vec4<u32>(global1.x, u_input.a, 1u, u_input.c)) % vec4<u32>(32u))));
    var var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(471f, 483f)))))))), vec2<f32>(-1139f, -217f)));
    return func_2(_wgslsmith_mod_u32(1u, ~42572u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(~u_input.b) >> (u_input.a % 32u), u_input.b), _wgslsmith_div_vec2_i32(-select(vec2<i32>(15250i, -2147483647i), vec2<i32>(u_input.b, 6774i), vec2<bool>(false, true)) << (~global1.xz % vec2<u32>(32u)), select(~(-vec2<i32>(2147483647i, u_input.b)), vec2<i32>(14225i, -16067i), false)));
    let var_1 = ~(~((_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, global1.x, 8090u), vec3<u32>(1u, 27423u, 33234u)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(1u, global1.x, u_input.c), vec3<u32>(u_input.c, global1.x, 4294967295u))) ^ ~(~vec3<u32>(1u, 22193u, u_input.c))));
    let var_2 = func_1();
    let var_3 = abs(vec3<u32>(10772u & ~u_input.a, _wgslsmith_div_u32(111299u, 38901u), u_input.c));
    var_0 = 0i;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-785f, _wgslsmith_f_op_f32(2323f - 1920f), _wgslsmith_f_op_f32(ceil(1549f)), -1315f) - vec4<f32>(_wgslsmith_f_op_f32(1297f - -356f), -752f, 162f, _wgslsmith_f_op_f32(trunc(-1167f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1647f, 1331f, -1011f, 104f) + vec4<f32>(392f, -191f, -1000f, -989f)))))), true)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-681f, -1188f, 1447f, 1384f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(441f, -538f, 307f, -1022f) + vec4<f32>(1000f, -315f, -203f, 1216f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1075f, 540f, -2056f), vec4<f32>(-1000f, -332f, -500f, -247f), true))), select(vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b), !vec4<bool>(true, var_2.b, false, var_2.b), !vec4<bool>(var_2.b, true, false, true))))));
    var var_5 = Struct_1(u_input.b << (var_3.x % 32u), true);
    var_0 = -var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(var_3, vec3<u32>(var_1.x, 89112u, var_3.x)), var_1.x)), _wgslsmith_f_op_vec3_f32(var_4.yxy * vec3<f32>(347f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1071f, 492f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -671f)))));
}

