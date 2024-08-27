struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_1(vec2<bool>(true, global0.x), min(~(arg_2.a.zy >> (vec2<u32>(u_input.c.x, arg_2.a.x) % vec2<u32>(32u))), ~select(vec2<u32>(u_input.d.x, u_input.b.x), ~vec2<u32>(arg_2.a.x, arg_2.a.x), arg_0)), arg_2.b.zzz, 1u);
    var var_1 = Struct_3(all(!vec4<bool>(var_0.a.x, var_0.a.x, true, false)), u_input.d);
    global1 = ~0u;
    let var_2 = _wgslsmith_f_op_f32(round(237f));
    var_1 = Struct_3(false, vec2<u32>((reverseBits(74841u) >> (_wgslsmith_sub_u32(arg_2.a.x, var_1.b.x) % 32u)) | 4294967295u, ~0u));
    return 1i << (0u % 32u);
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = Struct_2(~vec4<u32>(u_input.c.x, _wgslsmith_div_u32(~u_input.d.x, u_input.c.x), _wgslsmith_mult_u32(22390u, select(1u, 0u, global0.x)), firstTrailingBit(u_input.a)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(arg_0.x, 4898i, reverseBits(17708i), _wgslsmith_sub_i32(arg_0.x, arg_0.x)), vec4<i32>(countOneBits(56817i), 0i, func_3(global0.x, -777f, Struct_2(u_input.b, vec4<i32>(0i, 66678i, arg_0.x, arg_0.x), vec4<f32>(646f, -2170f, 699f, 884f))), ~arg_0.x)), ~countOneBits(min(vec4<i32>(arg_0.x, -16636i, -2147483647i, arg_0.x), vec4<i32>(arg_0.x, 7033i, arg_0.x, -16738i)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(595f, _wgslsmith_f_op_f32(step(-982f, 1443f)), _wgslsmith_f_op_f32(-574f - 1552f), 1008f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-444f, -1000f, global0.x)) + -1160f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -454f))), -672f, 1172f)));
    var var_1 = ~(~(~(~u_input.b.x ^ var_0.a.x)));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 16814u), ~var_0.a.x), ~(~var_0.a.x));
    let var_3 = u_input.c;
    let var_4 = arg_0.x;
    return Struct_3(global0.x && !(!(!global0.x)), countOneBits((var_3.xx ^ _wgslsmith_sub_vec2_u32(vec2<u32>(var_3.x, var_3.x), vec2<u32>(27980u, var_3.x))) << ((vec2<u32>(var_2, 4294967295u) ^ (u_input.b.yx << (u_input.b.xw % vec2<u32>(32u)))) % vec2<u32>(32u))));
}

fn func_1() -> Struct_1 {
    var var_0 = select(vec4<u32>(u_input.c.x, 1u, min(_wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(u_input.c.x, 1u)), _wgslsmith_mult_u32(firstTrailingBit(u_input.c.x), ~u_input.c.x)), u_input.a), ~vec4<u32>(14187u, 1u >> (~u_input.c.x % 32u), countOneBits(68182u << (u_input.a % 32u)), u_input.c.x), global0.x);
    var var_1 = func_2(-vec2<i32>(~0i, ~(-1534i)));
    let var_2 = Struct_1(vec2<bool>(any(select(!vec4<bool>(var_1.a, global0.x, global0.x, false), select(vec4<bool>(var_1.a, true, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(true, false, false, global0.x)), vec4<bool>(var_1.a, var_1.a, var_1.a, true))), abs(8739u) >= var_1.b.x), _wgslsmith_mod_vec2_u32(select(vec2<u32>(4294967295u, var_1.b.x | var_1.b.x), reverseBits(abs(u_input.c.yx)), vec2<bool>(true, true)), max(vec2<u32>(var_0.x, 56510u), vec2<u32>(~1u, 4294967295u | var_1.b.x))), vec3<i32>(func_3(global0.x, -980f, Struct_2(abs(vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.b.x)), select(vec4<i32>(-20719i, 37576i, -12654i, 1i), vec4<i32>(9386i, -9396i, -70417i, 2147483647i), var_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1187f, 502f, 669f, -301f)))), 1i, ~firstTrailingBit(0i)), u_input.c.x);
    var_0 = ~u_input.b;
    var var_3 = true;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = true;
    global1 = ~countOneBits(1u) ^ _wgslsmith_add_u32(1u, u_input.a);
    global1 = var_0.d;
    let var_2 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(25588u, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1202f - 173f), 1f, true)), 287f), 1f);
}

