struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: vec3<i32>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<u32>(1u, 9172u, 4294967295u), false, vec3<i32>(0i, 2147483647i, 0i)), Struct_2(vec4<bool>(true, true, true, true)));

var<private> global3: Struct_3 = Struct_3(Struct_1(vec3<u32>(0u, 4294967295u, 74250u), true, vec3<i32>(-78791i, -7138i, 1153i)), Struct_2(vec4<bool>(true, false, true, false)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> u32 {
    var var_0 = ~global3.a.c.zx;
    var var_1 = global2.a;
    global1 = -vec3<i32>(-39941i, global3.a.c.x & (i32(-1i) * -global3.a.c.x), ~1i);
    global1 = reverseBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(~global2.a.c.x, _wgslsmith_div_i32(global2.a.c.x, global1.x), -var_1.c.x), _wgslsmith_div_vec3_i32(min(vec3<i32>(global3.a.c.x, 29510i, u_input.a), var_1.c), vec3<i32>(-67502i, -global2.a.c.x, var_0.x << (var_1.a.x % 32u)))));
    var var_2 = abs(global2.a.c.yz);
    return 1u;
}

fn func_3() -> u32 {
    global0 = array<Struct_3, 27>();
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~(0u >> (global3.a.a.x % 32u))), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.a.a.x, 1u), 5543u)), 27u)], _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1457f, -2131f) + vec2<f32>(-985f, -542f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(212f, -377f) + vec2<f32>(247f, -1055f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-369f - -288f), _wgslsmith_f_op_f32(step(-1615f, 1094f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(472f * -929f)))))));
    var var_1 = global2.b;
    var var_2 = ~firstTrailingBit(~vec2<u32>(12266u, ~8032u));
    global2 = global0[_wgslsmith_index_u32(0u, 27u)];
    return ~4294967295u;
}

fn func_1(arg_0: u32) -> vec3<u32> {
    let var_0 = true;
    global0 = array<Struct_3, 27>();
    let var_1 = -_wgslsmith_mult_vec4_i32((vec4<i32>(global2.a.c.x, 0i, 0i, global1.x) ^ vec4<i32>(-12356i, 72789i, global3.a.c.x, -14413i)) | vec4<i32>(u_input.a, global2.a.c.x, global1.x, 2402i), _wgslsmith_mod_vec4_i32(vec4<i32>(global3.a.c.x, 21494i, 38752i, -1i), -vec4<i32>(global2.a.c.x, 0i, global2.a.c.x, global2.a.c.x))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(func_2(), _wgslsmith_clamp_u32(func_3(), 0u, 1u), ~(~arg_0), 105631u), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 1506u, 0u, global3.a.a.x), vec4<u32>(35971u, 0u, global2.a.a.x, 0u)) << (abs(vec4<u32>(24743u, global2.a.a.x, 1u, 34836u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(~func_3(), 27u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)))));
    var var_3 = var_2.a.a;
    return abs(vec3<u32>(firstLeadingBit(1u), abs(_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0, arg_0), vec2<u32>(var_3.a.x, 1u), global2.a.b), select(vec2<u32>(arg_0, var_3.a.x), global2.a.a.zz, var_2.a.a.b))), global2.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~_wgslsmith_mod_vec3_u32(countOneBits(global3.a.a), func_1(1u))) << (~(~global2.a.a) % vec3<u32>(32u));
    global2 = Struct_3(global3.a, global3.b);
    let var_1 = global0[_wgslsmith_index_u32(150546u, 27u)];
    var var_2 = select(!select(select(vec2<bool>(true, true), select(global2.b.a.wz, global3.b.a.yw, vec2<bool>(global3.a.b, var_1.a.b)), select(vec2<bool>(global2.b.a.x, false), global2.b.a.xy, true)), !select(vec2<bool>(global2.b.a.x, false), global2.b.a.zy, global3.b.a.yx), global2.b.a.ww), select(var_1.b.a.wz, global3.b.a.zx, vec2<bool>(global3.a.b, all(global3.b.a))), !(!(!var_1.b.a.wy)));
    var var_3 = global0[_wgslsmith_index_u32(var_1.a.a.x, 27u)];
    var_2 = select(select(global3.b.a.zy, select(var_1.b.a.xy, select(!var_3.b.a.xw, !var_3.b.a.wy, !vec2<bool>(var_1.b.a.x, false)), !var_1.b.a.zx), select((var_2.x | true) || (global3.a.c.x < -21929i), select(true, true, all(vec2<bool>(true, true))), !var_3.a.b)), vec2<bool>(any(select(global2.b.a, vec4<bool>(global3.a.b, true, true, false), !vec4<bool>(global2.b.a.x, false, true, var_2.x))), true), global2.a.b);
    var_3 = global0[_wgslsmith_index_u32(0u, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(5617u, _wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_add_i32(global1.x, -3163i), -49314i)), 27111i), vec4<i32>(~(-_wgslsmith_mod_i32(var_1.a.c.x, var_1.a.c.x)), (-u_input.a >> (2988u % 32u)) << (4294967295u % 32u), -2147483647i, -18056i), countOneBits((var_3.a.a >> ((var_0 >> (var_3.a.a % vec3<u32>(32u))) % vec3<u32>(32u))) >> (vec3<u32>(~72948u, _wgslsmith_mod_u32(0u, 47661u), _wgslsmith_add_u32(1u, global2.a.a.x)) % vec3<u32>(32u))));
}

