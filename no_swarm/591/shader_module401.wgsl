struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
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

var<private> global0: array<vec3<f32>, 21>;

var<private> global1: Struct_1 = Struct_1(0i, vec4<bool>(false, true, false, true), 4294967295u, vec2<f32>(-495f, 1338f));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -268f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.d.x - 1243f))), false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b), arg_3.b)))), _wgslsmith_f_op_f32(-global1.d.x));
    global1 = Struct_1(-(_wgslsmith_clamp_i32(1i, reverseBits(2953i), ~arg_0.a) ^ 0i), select(vec4<bool>(false, !arg_2.x, any(vec2<bool>(true, true)), arg_2.x), arg_0.b, true), global1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), global1.d.x))));
    global1 = arg_0;
    global0 = array<vec3<f32>, 21>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + arg_1) - 1403f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1219f, -1699f))) - -1504f) - _wgslsmith_div_f32(215f, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-var_0.a)))), -628f);
    return _wgslsmith_f_op_f32(-arg_0.d.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = ~abs(~(-18599i));
    global0 = array<vec3<f32>, 21>();
    let var_1 = ~firstLeadingBit(_wgslsmith_clamp_vec4_i32((vec4<i32>(u_input.c.x, 0i, -31818i, var_0) ^ vec4<i32>(var_0, var_0, global1.a, u_input.c.x)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(14061u, u_input.b.x, u_input.b.x, arg_1.x), vec4<u32>(33798u, arg_1.x, global1.c, u_input.e.x)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.a, var_0, var_0, 0i), vec4<i32>(var_0, 35959i, var_0, 2147483647i)) >> (reverseBits(vec4<u32>(1u, arg_1.x, 8005u, 1u)) % vec4<u32>(32u)), vec4<i32>(0i, -u_input.c.x, ~global1.a, -1i)));
    let var_2 = Struct_3(3735u, Struct_1(1i, !global1.b, ~61275u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~23927u, 21u)]), vec3<f32>(_wgslsmith_f_op_f32(select(global1.d.x, -1639f, false)), _wgslsmith_f_op_f32(-824f - global1.d.x), 158f))) - global0[_wgslsmith_index_u32(~9533u, 21u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(14433i & u_input.c.x, global1.b, _wgslsmith_add_u32(global1.c, 2636u), _wgslsmith_f_op_vec2_f32(round(global1.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-global1.d.x)), vec3<bool>(global1.b.x, global1.b.x, 28467u == u_input.d), Struct_2(-718f, _wgslsmith_f_op_f32(select(global1.d.x, -1466f, arg_0.x))))) * global1.d.x));
    var var_3 = vec4<i32>(max(var_2.b.a, _wgslsmith_mod_i32(abs(var_1.x << (4294967295u % 32u)), global1.a)), firstLeadingBit(52107i), u_input.c.x << (~select(min(36481u, u_input.e.x), ~1u, true) % 32u), abs(-firstTrailingBit(-2147483647i)));
    return Struct_3(abs(4294967295u), Struct_1(i32(-1i) * -(1i & global1.a), var_2.b.b, 516u, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(global1.d.x - 294f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.d * var_2.b.d))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(1334f, 1666f)), global1.d.x, global1.d.x))), vec3<f32>(_wgslsmith_f_op_f32(var_2.d - _wgslsmith_f_op_f32(var_2.d * -385f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_2.c.x, global1.d.x)))), _wgslsmith_f_op_f32(-1406f * _wgslsmith_f_op_f32(min(global1.d.x, global1.d.x)))))), 1835f);
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(vec2<bool>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x - -1076f)) == _wgslsmith_f_op_f32(round(-1114f))), ~u_input.e);
    let var_1 = Struct_2(729f, _wgslsmith_f_op_f32(883f * _wgslsmith_f_op_f32(-560f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(189f))))));
    var var_2 = -max(-var_0.b.a, reverseBits(0i));
    let var_3 = var_1;
    var var_4 = !func_2(select(!global1.b.wy, select(var_0.b.b.xw, global1.b.xz, var_0.b.b.x), vec2<bool>(global1.b.x, false)), u_input.b).b.b.x && all(func_2(!global1.b.yw, u_input.e).b.b.wx);
    return func_2(global1.b.ww, ((vec2<u32>(var_0.a, 0u) | ~u_input.b) ^ vec2<u32>(u_input.a, 47662u)) | vec2<u32>(4294967295u, firstLeadingBit(u_input.a)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = -496i;
    let var_1 = _wgslsmith_div_i32(-1i, arg_0.a);
    let var_2 = Struct_1(_wgslsmith_clamp_i32(~(-2147483647i), abs(-44271i), -30128i), vec4<bool>(func_2(vec2<bool>(true, global1.b.x), vec2<u32>(1100u, arg_3.b.c)).b.a <= ~firstTrailingBit(-30177i), any(global1.b), arg_3.b.b.x, any(!select(global1.b, vec4<bool>(global1.b.x, false, true, false), true))), 14185u, vec2<f32>(144f, _wgslsmith_f_op_f32(arg_0.d.x * -1190f)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x - -1188f)), func_1().d);
    global1 = arg_0;
    return StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(~(i32(-1i) * -2147483647i), global1.a), u_input.c.yx));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(-7936i, !vec4<bool>(!global1.b.x, global1.b.x || true, true, false), min(~global1.c, _wgslsmith_div_u32(global1.c << (1u % 32u), ~19850u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(global1.d))))), false, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u | u_input.e.x, firstTrailingBit(4294967295u)) | _wgslsmith_div_u32(4294967295u, global1.c << (659u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.c, u_input.d) & vec3<u32>(u_input.e.x, u_input.b.x, global1.c), vec3<u32>(global1.c, 4861u, global1.c) << (vec3<u32>(1u, 4294967295u, u_input.b.x) % vec3<u32>(32u)))), func_1());
}

