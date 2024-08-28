struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(42372i, i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), -21328i, -28743i), vec3<i32>(-46252i, 2147483647i, -1i), vec3<i32>(-10307i, 0i, -22344i), vec3<i32>(19829i, 0i, -1i), vec3<i32>(0i, 0i, 17983i), vec3<i32>(43234i, i32(-2147483648), -8246i), vec3<i32>(0i, 10211i, -1i), vec3<i32>(64128i, 0i, -15546i), vec3<i32>(-31150i, 32866i, 0i), vec3<i32>(2147483647i, 42773i, 2147483647i), vec3<i32>(0i, 0i, 65270i), vec3<i32>(-15420i, i32(-2147483648), -22071i), vec3<i32>(-10012i, -1i, 2147483647i), vec3<i32>(16489i, 2147483647i, 60461i), vec3<i32>(10296i, -1i, -66878i), vec3<i32>(1i, 6622i, -14011i), vec3<i32>(1i, 36082i, -42415i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(22266i, -34821i, 1i));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(1485u, 1u), 1u, ~1u)), _wgslsmith_add_vec3_u32(vec3<u32>(~4294967295u, firstLeadingBit(reverseBits(4294967295u)), _wgslsmith_clamp_u32(43875u, ~4294967295u, _wgslsmith_div_u32(4225u, 9586u))), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(1u, 1u, 1u)), min(vec3<u32>(2670u, 17372u, 24217u), ~vec3<u32>(44363u, 61519u, 24287u)), vec3<u32>(4294967295u, abs(1949u), _wgslsmith_dot_vec3_u32(vec3<u32>(56142u, 35469u, 4294967295u), vec3<u32>(0u, 1u, 40725u))))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_mult_u32(func_3() | _wgslsmith_dot_vec2_u32(~vec2<u32>(37917u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 21165u, 42190u, 1u), vec4<u32>(30423u, 35696u, 15662u, 0u)), 0u)), 4294967295u);
    let var_1 = ~(firstTrailingBit(~vec3<u32>(var_0, var_0, 80192u)) | min(~(~vec3<u32>(45127u, var_0, 0u)), min(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, var_0, 5623u), vec3<u32>(var_0, var_0, 54713u)), vec3<u32>(var_0, var_0, 31879u) & vec3<u32>(1u, 1u, var_0))));
    global0 = array<Struct_1, 15>();
    let var_2 = global0[_wgslsmith_index_u32(1u, 15u)];
    global1 = array<vec3<i32>, 21>();
    return var_2.d;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -977f), _wgslsmith_f_op_f32(1278f - -753f), _wgslsmith_dot_vec3_u32(vec3<u32>(60024u, 0u, 20436u), vec3<u32>(4294967295u, 21409u, 0u)) < _wgslsmith_div_u32(1u, 51742u))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1823f, -1559f))))))));
    return global0[_wgslsmith_index_u32(1u, 15u)];
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>) -> vec4<u32> {
    global0 = array<Struct_1, 15>();
    var var_0 = func_4(select(u_input.c, -2147483647i, !(!func_2())), -firstLeadingBit(select(reverseBits(vec4<i32>(u_input.d, u_input.e.x, 14259i, -23102i)), -vec4<i32>(1i, u_input.c, u_input.d, u_input.e.x), u_input.c != 0i)), !arg_0.wwz);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.a.x, 2086f) * _wgslsmith_f_op_vec3_f32(exp2(var_0.a))))), ~(-48288i), ~reverseBits(~71010u), true && !(_wgslsmith_f_op_f32(-var_0.a.x) >= 782f));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1653f, -1000f, var_1.a.x))))), var_1.b, 35539u, !arg_1.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), 73417i, ~(~(~var_0.c) | _wgslsmith_div_u32(~var_1.c, var_2.c)), ~56786u < func_4(-2147483647i, vec4<i32>(var_0.b, 15177i, 2147483647i, var_0.b) >> (~vec4<u32>(1u, var_2.c, var_0.c, var_0.c) % vec4<u32>(32u)), select(select(arg_1.zwy, arg_1.wxw, arg_1.xzz), arg_0.xyw, select(vec3<bool>(true, false, arg_1.x), arg_0.zyw, vec3<bool>(arg_1.x, arg_0.x, var_2.d)))).c);
    return ~(_wgslsmith_div_vec4_u32(~vec4<u32>(29108u, var_0.c, var_1.c, 1u), abs(vec4<u32>(43510u, var_1.c, var_0.c, 0u))) << (~vec4<u32>(1u, 4305u, var_0.c, 1u) % vec4<u32>(32u))) | ~_wgslsmith_div_vec4_u32(~abs(vec4<u32>(var_0.c, var_0.c, var_1.c, var_2.c)), max(~vec4<u32>(var_0.c, 0u, var_3.c, var_2.c), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, 106590u, var_2.c, 13464u), vec4<u32>(7490u, 1u, 2358u, var_3.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(0u, 0u, 4294967295u, 20688u)), func_1(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 12131u, 0u, 1u), vec4<u32>(1u, 32745u, 0u, 1u), vec4<u32>(0u, 18148u, 29474u, 4294967295u))), reverseBits(min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(55592u, 0u, 64777u, 1391u)))), 15u)];
    var var_1 = select(firstTrailingBit(countOneBits(vec4<u32>(51688u & var_0.c, min(42024u, 0u), func_3(), 9716u))), ~firstTrailingBit(~(vec4<u32>(var_0.c, 0u, 1u, 1u) | vec4<u32>(11063u, 13430u, 4294967295u, var_0.c))), true);
    let var_2 = ~vec2<i32>(87477i, reverseBits(0i)) ^ u_input.e;
    var var_3 = 0i;
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(func_3(), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.x - 723f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -729f) - -1766f)))), ~(-var_2.x));
}

