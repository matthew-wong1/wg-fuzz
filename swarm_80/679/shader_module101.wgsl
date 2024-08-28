struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1173f, 4294967295u, vec2<u32>(4294967295u, 31622u)), Struct_1(537f, 4294967295u, vec2<u32>(14927u, 0u)), Struct_1(272f, 1674u, vec2<u32>(4294967295u, 8730u)), Struct_1(1497f, 1u, vec2<u32>(4294967295u, 93298u)), Struct_1(1000f, 31698u, vec2<u32>(27003u, 1u)), Struct_1(-1153f, 0u, vec2<u32>(1u, 12842u)), Struct_1(-1124f, 0u, vec2<u32>(1630u, 59287u)), Struct_1(1268f, 1u, vec2<u32>(17831u, 1u)));

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-1000f, 0u, vec2<u32>(0u, 1u)), Struct_1(-854f, 40078u, vec2<u32>(37084u, 2350u)), Struct_1(-305f, 1u, vec2<u32>(4294967295u, 36474u)), Struct_1(961f, 26508u, vec2<u32>(11927u, 20609u)), Struct_1(-514f, 1u, vec2<u32>(1u, 1u)), Struct_1(-771f, 4294967295u, vec2<u32>(4294967295u, 4294967295u)), Struct_1(-606f, 0u, vec2<u32>(4294967295u, 51445u)), Struct_1(-325f, 4294967295u, vec2<u32>(0u, 4294967295u)), Struct_1(206f, 0u, vec2<u32>(40762u, 1u)), Struct_1(-603f, 4294967295u, vec2<u32>(29869u, 4294967295u)), Struct_1(105f, 41218u, vec2<u32>(4294967295u, 35143u)), Struct_1(-121f, 1u, vec2<u32>(50327u, 13423u)), Struct_1(268f, 24616u, vec2<u32>(31888u, 4294967295u)), Struct_1(1043f, 20200u, vec2<u32>(7476u, 1u)), Struct_1(-428f, 110719u, vec2<u32>(1u, 0u)), Struct_1(1474f, 0u, vec2<u32>(4294967295u, 57554u)), Struct_1(-766f, 4294967295u, vec2<u32>(115664u, 25732u)), Struct_1(-553f, 0u, vec2<u32>(11090u, 28784u)));

var<private> global3: bool = false;

var<private> global4: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<u32> {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_f32(581f, arg_0.a);
    var var_2 = arg_1 >> (~arg_0.c % vec2<u32>(32u));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(firstTrailingBit(arg_1.x) ^ 0u), u_input.a.x), 19u)];
    var_1 = arg_0.a;
    return arg_1;
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> f32 {
    global0 = array<Struct_1, 19>();
    let var_0 = 1628f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-296f, var_0) + var_0))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global4 = true;
    global0 = array<Struct_1, 19>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), 1i))), _wgslsmith_f_op_f32(abs(313f))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_1, 19>();
    var var_0 = select(arg_3, arg_3, !vec3<bool>(arg_3.x, true, !arg_3.x));
    var var_1 = Struct_1(1033f, u_input.a.x, reverseBits(vec2<u32>(~_wgslsmith_div_u32(28857u, u_input.a.x), ~select(arg_0.b, u_input.a.x, arg_3.x))));
    let var_2 = abs(firstLeadingBit(abs(_wgslsmith_div_vec3_u32(vec3<u32>(52235u, 96371u, var_1.c.x), vec3<u32>(arg_2.b, arg_2.b, 4294967295u)) | u_input.a)));
    let var_3 = var_1.a;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-436f + arg_0.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(16639i, 1i, 15448i, -2555i), ~(-1i))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a))))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 6276u), vec2<u32>(arg_0.b, 5653u)) << (reverseBits(vec2<u32>(33710u, 12473u)) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 58191u) | vec2<u32>(0u, arg_0.b)) << (u_input.a.x % 32u), ~(~(~(~vec2<u32>(109383u, arg_0.c.x)))));
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    global2 = array<Struct_1, 18>();
    let var_0 = ~(min(select(~vec4<u32>(0u, 51379u, u_input.a.x, 66504u), reverseBits(vec4<u32>(64041u, 93476u, 0u, 4294967295u)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))), firstTrailingBit(abs(vec4<u32>(arg_0.b, arg_0.b, arg_0.b, u_input.a.x)))) & (~reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, arg_0.b, 1u)) & select(select(vec4<u32>(15400u, u_input.a.x, u_input.a.x, arg_0.c.x), vec4<u32>(u_input.a.x, arg_0.b, 82086u, u_input.a.x), true), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), true)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a)) - _wgslsmith_f_op_f32(func_2(Struct_1(arg_0.a, reverseBits(arg_0.c.x), ~vec2<u32>(u_input.a.x, var_0.x)), global0[_wgslsmith_index_u32(1u, 19u)]))), arg_0.a, arg_0.a);
    var var_2 = Struct_1(698f, 67069u, u_input.a.zy);
    let var_3 = global0[_wgslsmith_index_u32(var_0.x, 19u)];
    return StorageBuffer(reverseBits(~(-vec4<i32>(-2147483647i, -5250i, 2147483647i, 2147483647i))), ~abs(var_0), _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-var_3.a)), (i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 3820i, -1i), vec4<i32>(-2147483647i, 56259i, -6324i, 1i))) >> (~1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_1(global0[_wgslsmith_index_u32(7053u, 19u)], vec2<u32>(1u, 4294967295u)) >> (u_input.a.yx % vec2<u32>(32u)), vec2<u32>(u_input.a.x, u_input.a.x) ^ u_input.a.yy), 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(359f, u_input.a.x, u_input.a.yx), Struct_1(-824f, 4294967295u, vec2<u32>(37758u, u_input.a.x))))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u << (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u), 1u), 18u)], select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), true)));
}

