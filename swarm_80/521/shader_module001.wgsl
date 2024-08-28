struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec4<bool>(true, true, true, false), 0u, 1u));

var<private> global1: Struct_2;

var<private> global2: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(2147483647i, 1i, 2147483647i, -5232i), vec4<i32>(4387i, 1i, 30529i, 1i), vec4<i32>(-20366i, -4502i, -59262i, 10623i), vec4<i32>(305i, i32(-2147483648), 0i, 11396i), vec4<i32>(2147483647i, 2147483647i, -29100i, -34070i), vec4<i32>(2147483647i, -3542i, -7015i, -11281i), vec4<i32>(3772i, 0i, -1956i, 13816i), vec4<i32>(-130i, 1i, i32(-2147483648), 39837i), vec4<i32>(1i, -1i, 0i, 1i), vec4<i32>(13626i, 1i, i32(-2147483648), 1i), vec4<i32>(0i, -1i, 58839i, 2147483647i), vec4<i32>(0i, 1i, -1i, -1i), vec4<i32>(15970i, 46918i, -46988i, 0i), vec4<i32>(-1i, -1i, 1i, -11481i), vec4<i32>(-1i, -8374i, 2147483647i, 0i));

var<private> global3: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: vec3<i32>) -> vec3<bool> {
    global2 = array<vec4<i32>, 15>();
    let var_0 = global1.b.zzw | vec3<u32>(u_input.a, firstTrailingBit(firstLeadingBit(~64650u)), arg_0.b);
    let var_1 = any(vec4<bool>((global1.d > arg_3.x) | arg_0.a.x, !select(false | arg_0.a.x, true, arg_0.a.x), !select(all(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), any(vec2<bool>(false, false)), true), arg_1.x >= 1u));
    var var_2 = 2147483647i;
    let var_3 = 447f;
    return vec3<bool>(var_1, arg_0.a.x, !all(vec4<bool>(false, !var_1, true, true)));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32) -> vec3<bool> {
    global2 = array<vec4<i32>, 15>();
    global3 = -2147483647i;
    global3 = ~(-11906i);
    global3 = ~1i;
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -402f);
    return !select(vec3<bool>(true, arg_0, !(!arg_0)), !select(vec3<bool>(arg_0, arg_0, arg_0), func_3(global0[_wgslsmith_index_u32(22400u, 1u)], global1.b.yx, vec2<f32>(arg_2, 1000f), vec3<i32>(global1.d, -19227i, 1i)), false), select(select(func_3(Struct_3(vec4<bool>(arg_0, arg_0, false, false), 29077u, global1.a.b), vec2<u32>(4294967295u, u_input.a), vec2<f32>(arg_2, 784f), vec3<i32>(-27379i, global1.d, global1.d)), !vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(arg_0, true, false), vec3<bool>(false, true, true), arg_0)), vec3<bool>(arg_0, arg_0, true), any(!vec4<bool>(arg_0, arg_0, true, true))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec2<f32>) -> vec2<i32> {
    var var_0 = ~u_input.a;
    var var_1 = firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~4294967295u, u_input.a << (27905u % 32u), 1u, u_input.a), select(vec4<u32>(17979u, global1.c, global1.c, global1.b.x), select(vec4<u32>(58360u, u_input.a, 44459u, u_input.a), global1.b, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)))), vec4<u32>(19529u, 1u, abs(4294967295u), global1.c << (u_input.a % 32u))));
    var var_2 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true), select(func_2(any(vec4<bool>(true, false, false, true)), 2211u, _wgslsmith_f_op_f32(-582f * -1516f)), func_2(true, abs(var_1.x), _wgslsmith_f_op_f32(trunc(global1.a.a))), vec3<bool>(true, true, global1.c < 0u)));
    global2 = array<vec4<i32>, 15>();
    let var_3 = Struct_2(global1.a, vec4<u32>(firstLeadingBit(~4294967295u) >> (~(u_input.a >> (global1.b.x % 32u)) % 32u), ~(var_1.x | _wgslsmith_div_u32(var_1.x, 0u)), abs(~4294967295u), 88027u), 0u, _wgslsmith_add_i32(~(~abs(14220i)), -2147483647i));
    return firstTrailingBit(reverseBits(max(~vec2<i32>(var_3.d, 10107i), vec2<i32>(-1i, global1.d)))) >> (~((~var_3.b.wx ^ global1.b.xz) ^ global1.b.wz) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global1.d), -vec2<i32>(-2147483647i, global1.d)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1348f, -679f, -217f, global1.a.a) * vec4<f32>(-1000f, global1.a.a, -1904f, -878f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-134f, 667f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.a, 656f))), -vec2<i32>(global1.d, -15022i)));
    global3 = -var_0.x;
    let var_1 = countOneBits(~(~max(global1.b, global1.b)) | ~(~global1.b));
    var var_2 = ~vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -1i, 1i), -16980i, _wgslsmith_div_i32(global1.d, ~func_1(vec4<f32>(2683f, global1.a.a, global1.a.a, global1.a.a), vec2<f32>(global1.a.a, 1922f), vec2<f32>(1000f, -656f)).x));
    global3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(var_2.xx, countOneBits(_wgslsmith_mod_vec2_i32(~vec2<i32>(-12117i, global1.d), vec2<i32>(-1i, var_2.x))), !vec2<bool>(any(vec4<bool>(true, true, true, false)), true)), 16691u);
}

