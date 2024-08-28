struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 4>;

var<private> global2: Struct_1 = Struct_1(0u, -647f, vec2<u32>(30246u, 1u));

var<private> global3: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: vec2<bool>) -> vec4<f32> {
    var var_0 = min(reverseBits(~vec2<i32>(global0.a.c, _wgslsmith_div_i32(u_input.a.x, u_input.a.x))), firstTrailingBit(-abs(vec2<i32>(37095i, 0i)) << (_wgslsmith_mod_vec2_u32(arg_2.xx, firstTrailingBit(arg_2.wz)) % vec2<u32>(32u))));
    var var_1 = vec3<u32>(~(arg_2.x & ~18635u), 5270u, abs(1u) | (arg_0 << (~arg_0 % 32u)));
    global0 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(step(global2.b, _wgslsmith_f_op_f32(-1000f * -143f))), 437f, global2.b), vec4<f32>(_wgslsmith_f_op_f32(1156f + _wgslsmith_f_op_f32(select(global2.b, global2.b, arg_3.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global2.b, 1310f)))), -893f, global0.c.b.x), global0.b), u_input.a.x, Struct_2(_wgslsmith_f_op_vec4_f32(global0.c.b - vec4<f32>(1148f, _wgslsmith_f_op_f32(f32(-1f) * -1107f), global2.b, _wgslsmith_f_op_f32(round(global2.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1899f, -1928f, global0.c.a.x, 358f) * global0.c.b) - global0.a.b)), 35532i), -1337f);
    var var_2 = !any(!(!select(vec2<bool>(arg_3.x, arg_3.x), arg_3, true)));
    var var_3 = -(-arg_1.zx >> (~(_wgslsmith_add_vec2_u32(var_1.yx, arg_2.wy) >> (~vec2<u32>(30716u, arg_0) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return global0.c.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = global2.b;
    var_0 = _wgslsmith_f_op_f32(global0.a.b.x + global2.b);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0.a.b)) + vec4<f32>(-337f, 863f, 301f, 146f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(~(~20632u), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.c.c, u_input.a.x, 15677i, -44202i), vec4<i32>(0i, u_input.a.x, -2147483647i, -39408i), vec4<i32>(arg_1.x, -10560i, 1i, -32900i)), abs(~vec4<u32>(94764u, 4294967295u, global2.a, 13695u)), vec2<bool>(true, true))))), i32(-1i) * -1i);
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_f_op_vec4_f32(ceil(global0.a.a))) - var_1.b), _wgslsmith_div_vec4_f32(vec4<f32>(global2.b, _wgslsmith_f_op_f32(floor(1324f)), _wgslsmith_f_op_f32(-220f + -375f), _wgslsmith_f_op_f32(-var_1.b.x)), vec4<f32>(global0.a.b.x, _wgslsmith_f_op_f32(global2.b * global0.c.a.x), global0.c.b.x, -1205f)), var_1.c), 0i, Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a.b + vec4<f32>(global2.b, -627f, global2.b, var_1.b.x)) - _wgslsmith_f_op_vec4_f32(select(var_1.a, vec4<f32>(700f, 1519f, 1000f, -841f), vec4<bool>(false, true, false, true)))))), _wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a.b) - _wgslsmith_div_vec4_f32(vec4<f32>(1515f, -130f, var_1.b.x, global0.d), global0.c.a))), u_input.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-709f, 1000f))), _wgslsmith_f_op_f32(select(global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * 502f), !all(vec3<bool>(false, true, true)))))));
    var var_2 = ~arg_0.x;
    return Struct_2(vec4<f32>(-703f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.c.b.x, -598f)) * _wgslsmith_f_op_f32(f32(-1f) * -1086f)), _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(floor(1032f))))), _wgslsmith_f_op_f32(f32(-1f) * -694f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-680f, global2.b), _wgslsmith_f_op_f32(634f - global2.b), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a.x, global0.d)) * _wgslsmith_f_op_f32(-global2.b)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(493f - _wgslsmith_f_op_f32(f32(-1f) * -1630f)), _wgslsmith_f_op_f32(round(-1346f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.a.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -483f)), _wgslsmith_f_op_vec4_f32(func_3(global2.a, vec4<i32>(-35424i & u_input.a.x, _wgslsmith_div_i32(26009i, 1i), countOneBits(u_input.a.x), 7533i), _wgslsmith_mod_vec4_u32(~vec4<u32>(8480u, global2.a, 1u, global2.c.x), ~vec4<u32>(global2.a, global2.a, 1u, global2.c.x)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)))), arg_1.x >> (0u % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(~(abs(firstLeadingBit(u_input.a.x)) ^ 0i), -10934i);
    let var_1 = global0.a;
    global1 = array<Struct_1, 4>();
    var var_2 = arg_1;
    let var_3 = Struct_1(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(789f)) * _wgslsmith_div_f32(-1278f, -1272f)) * global0.a.a.x)), global2.c);
    return Struct_1(_wgslsmith_div_u32(var_3.c.x, 4294967295u), -1308f, vec2<u32>(var_3.c.x, _wgslsmith_div_u32(1u, 4294967295u)));
}

fn func_1() -> StorageBuffer {
    global2 = func_4(Struct_1(~21667u, global0.d, global2.c >> (global2.c % vec2<u32>(32u))), Struct_3(func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.a, 28463u, 51080u) ^ vec3<u32>(global2.a, 4294967295u, 1u), ~vec3<u32>(global2.c.x, global2.c.x, global2.a)), vec2<i32>(i32(-1i) * -21598i, select(u_input.a.x, -33912i, false))), u_input.a.x, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0.c.a))), global0.a.a, -1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(496f + _wgslsmith_f_op_f32(min(708f, 629f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)))));
    global3 = -51865i;
    var var_0 = vec3<i32>(global0.b, ~_wgslsmith_add_i32(-8727i, 2147483647i), global0.a.c);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1304f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(272f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(449f, global2.b)))))), _wgslsmith_f_op_vec4_f32(global0.c.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, global2.b, global2.b, global2.b)) - vec4<f32>(-793f, 1004f, global2.b, global2.b)))), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a.x, 2147483647i), -firstTrailingBit(_wgslsmith_mod_i32(2147483647i, 7031i))));
    global3 = u_input.a.x;
    return StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a.x, var_0.x << (1u % 32u), firstLeadingBit(u_input.a.x)), 2147483647i), 89584u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

