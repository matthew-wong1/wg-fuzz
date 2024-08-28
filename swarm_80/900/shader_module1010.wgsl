struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

var<private> global2: vec4<bool>;

var<private> global3: array<vec2<f32>, 30>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(401f, -289f, -402f, 173f), vec4<f32>(-707f, -702f, -1000f, -1882f))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-591f, -746f, -609f, 1831f))))), vec4<u32>(u_input.a, select(1u, 14765u, true), _wgslsmith_clamp_u32(u_input.a | min(u_input.a, u_input.a), _wgslsmith_mod_u32(0u >> (u_input.a % 32u), u_input.a), ~u_input.a), 4294967295u), ~(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(-13313i, -9223i, -2147483647i)), vec3<i32>(1i, 1i, 1i)) & ~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 2147483647i, -4968i), vec3<i32>(2147483647i, 5247i, -8689i), vec3<i32>(2147483647i, -1i, -1i))));
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, -1000f, -1007f, -1798f)))), vec4<u32>(2231u, 1u, var_0.b.x, 78227u) ^ (vec4<u32>(1u, u_input.a, u_input.a, 7953u) << (vec4<u32>(4294967295u, 1u, u_input.a, 29050u) % vec4<u32>(32u))), var_0.c)), select(vec4<bool>(true, any(global2.wy), global2.x, _wgslsmith_f_op_f32(-1184f * -337f) == _wgslsmith_f_op_f32(min(645f, var_0.a.x))), select(!(!vec4<bool>(true, true, global2.x, true)), vec4<bool>(global2.x, global2.x | global2.x, any(global2.ww), global2.x), all(!vec4<bool>(global2.x, global2.x, global2.x, global2.x))), global2.x), ~var_0.b.x);
    let var_2 = _wgslsmith_f_op_f32(max(var_1.a.a.a.x, var_1.a.a.a.x));
    return !select(!var_1.b, var_1.b, var_1.b.x);
}

fn func_2() -> Struct_4 {
    global1 = global2.x;
    var var_0 = -(_wgslsmith_clamp_vec4_i32(select(~vec4<i32>(-46839i, 2147483647i, 0i, 17080i), _wgslsmith_add_vec4_i32(vec4<i32>(15094i, 47507i, 0i, -25393i), vec4<i32>(43699i, -1i, -2147483647i, 75569i)), global2.x), vec4<i32>(i32(-1i) * -18986i, 0i, reverseBits(0i), _wgslsmith_clamp_i32(-8812i, 1i, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 17870i, 29434i, -1895i), vec4<i32>(1i, 1i, 1i, 1i))) << (~(~vec4<u32>(22519u, u_input.a, 4294967295u, 4294967295u)) % vec4<u32>(32u)));
    global0 = ~u_input.a;
    global0 = 16348u;
    var var_1 = max(-542i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(var_0.zzx) & abs(vec3<i32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(var_0.yxy, var_0.xxy), select(var_0.wyw, var_0.ywx, global2.wxw))), firstTrailingBit(var_0.x)));
    return Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-825f, 801f, 942f, -1162f) - vec4<f32>(-1231f, -501f, -438f, 1044f)) + vec4<f32>(-148f, 902f, 1236f, 1228f)), ~vec4<u32>(u_input.a, u_input.a, 26666u, u_input.a), vec3<i32>(-1i) * -vec3<i32>(-91411i, 1i, var_0.x))), func_3(), u_input.a);
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_4) -> vec2<u32> {
    global2 = !vec4<bool>(true, select(false, func_3().x, true && all(vec2<bool>(global2.x, global2.x))), any(arg_2.b.wx), arg_2.b.x);
    global0 = arg_2.a.a.b.x;
    global0 = arg_1.x;
    return vec2<u32>(min(u_input.a, firstTrailingBit(u_input.a)), min(0u << (u_input.a % 32u), u_input.a));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: u32) -> Struct_4 {
    var var_0 = vec3<bool>(global2.x, !all(func_2().b), !all(func_2().b.yy));
    var_0 = global2.zww;
    var var_1 = func_2().a;
    let var_2 = global2.x;
    var var_3 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 + 821f))), _wgslsmith_f_op_f32(f32(-1f) * -140f)), abs(_wgslsmith_mult_vec3_u32(var_1.a.b.zyz, ~vec3<u32>(var_1.a.b.x, 26674u, 0u))), func_2()).x >> (15952u % 32u);
    return func_2();
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: f32) -> i32 {
    var var_0 = func_5(!select(select(!global2.zyz, global2.ywz, true), vec3<bool>(all(global2.xyw), global2.x, true), select(!vec3<bool>(false, global2.x, false), !vec3<bool>(false, global2.x, true), global2.zzx)), -1017f, max(u_input.a << (11402u % 32u), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a, u_input.a)), func_4(-849f, ~vec3<u32>(u_input.a, 4294967295u, 1u), func_2()))));
    var var_1 = true;
    var var_2 = ~(~vec2<u32>(min(var_0.c, 0u) | 45757u, max(0u, ~26873u)));
    global1 = true;
    global1 = global2.x;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(vec4<f32>(413f, -469f, _wgslsmith_f_op_f32(trunc(1714f)), _wgslsmith_f_op_f32(-665f + -1680f)), vec4<i32>(1i, 1i, 1i, 1i), 1000f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(func_2().a.a.a, vec4<f32>(-1048f, _wgslsmith_f_op_f32(186f - 777f), 1f, -504f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-935f, -988f, _wgslsmith_f_op_f32(f32(-1f) * -1335f), _wgslsmith_f_op_f32(792f + -628f))))), func_2().a.a.b, u_input.a | _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, u_input.a)), max(~vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a))));
}

