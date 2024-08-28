struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: vec3<f32>;

var<private> global2: i32 = 0i;

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global4: array<Struct_2, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global4 = array<Struct_2, 9>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, 694f), _wgslsmith_f_op_vec2_f32(global1.zx - vec2<f32>(global1.x, global1.x))))));
    var var_1 = vec2<i32>(-1i, arg_0.x);
    var var_2 = true;
    let var_3 = 17162u;
    return Struct_1(select(abs(u_input.b), firstLeadingBit(~vec4<u32>(var_3, 117416u, 113948u, var_3)), !vec4<bool>(global3.x, global3.x, true, all(vec4<bool>(false, global3.x, global3.x, false)))));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_4(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, ~(~u_input.b.x)), 9u)]);
    let var_1 = Struct_2(_wgslsmith_div_vec4_u32(~(u_input.b | ~u_input.b), _wgslsmith_mod_vec4_u32(select(max(var_0.a.a, vec4<u32>(1u, 46899u, 4294967295u, var_0.a.b.a.x)), ~var_0.a.b.a, !vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.b.a.x, 13u)], true, false, global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, var_0.a.a.x, 38203u, 41611u), u_input.b))), func_2(~(-vec2<i32>(var_0.a.c, var_0.a.c)) << ((min(vec2<u32>(u_input.b.x, u_input.b.x), u_input.a) & u_input.b.xz) % vec2<u32>(32u))), var_0.a.c);
    var var_2 = Struct_3(func_2(min(vec2<i32>(-2147483647i, 46315i), vec2<i32>(-10861i, -2147483647i) << (var_1.b.a.yw % vec2<u32>(32u))) & ~_wgslsmith_mod_vec2_i32(vec2<i32>(14285i, -2147483647i), vec2<i32>(-2147483647i, 1i))), select(~abs(40224u), var_0.a.b.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a.x, u_input.a.x, u_input.b.x), var_0.a.b.a.xwz) % 32u), true & (global0[_wgslsmith_index_u32(~31136u, 13u)] && (global0[_wgslsmith_index_u32(var_0.a.b.a.x, 13u)] | false))));
    var_2 = Struct_3(Struct_1(vec4<u32>(4294967295u, firstLeadingBit(var_2.a.a.x), 1u, 36626u) & var_1.a), firstTrailingBit(abs(u_input.b.x | _wgslsmith_mult_u32(var_2.a.a.x, 0u))));
    let var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.b.a.x, 29710u, var_0.a.b.a.x, var_2.a.a.x), vec4<u32>(u_input.b.x, 1u, 13230u, u_input.a.x)), firstTrailingBit(var_2.b), 12028u), firstLeadingBit(firstTrailingBit(~vec3<u32>(var_1.b.a.x, var_2.a.a.x, var_1.a.x)))), ~var_0.a.b.a.x, u_input.a.x, ~(var_2.a.a.x >> (~(~57286u) % 32u)));
    return vec3<u32>(abs(min(countOneBits(1u), 42304u)) >> (firstLeadingBit(2957u) % 32u), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, ~36094u), ~(56022u ^ var_2.a.a.x)), var_0.a.a.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_3) -> bool {
    var var_0 = arg_1;
    var var_1 = Struct_3(func_2(vec2<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, -680i), vec2<i32>(-2147483647i, 2147483647i), false), vec2<i32>(-1i, 27063i)), -49977i)), ~u_input.b.x ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(arg_2.a.a.zy, vec2<u32>(u_input.b.x, 1u))), _wgslsmith_dot_vec3_u32(func_3(), vec3<u32>(arg_2.a.a.x, 34364u, 26206u) ^ vec3<u32>(1u, 26990u, 4294967295u))));
    var var_2 = 293f;
    var_0 = global1.x;
    global0 = array<bool, 13>();
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(arg_0.x), func_3().x), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 90385i;
    global3 = vec4<bool>(global1.x > global1.x, func_1(~abs(u_input.b.xzw), -163f, Struct_3(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 33020u, u_input.b.x)), 47759u)), true, any(vec3<bool>(global3.x, false, true)));
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    let var_1 = select(global3.yzx, !vec3<bool>(global0[_wgslsmith_index_u32(~1u, 13u)], true, !(u_input.a.x < 527u)), true);
    global0 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(-1594f, vec4<u32>(0u, ~u_input.b.x, _wgslsmith_sub_u32(4294967295u, 0u), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(-global1.x))) - -1256f));
}

