struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, false, true), vec4<f32>(-874f, -1690f, 1307f, -1000f), Struct_1(82604u, -1413f, vec4<bool>(false, false, false, true), -428f, vec2<bool>(false, false)));

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<f32, 26> = array<f32, 26>(-141f, -2454f, -981f, 561f, -1049f, -180f, 217f, 335f, -1119f, -475f, 795f, 1368f, -234f, 689f, -204f, -515f, 403f, -334f, 326f, 1274f, 1502f, 332f, 582f, 1031f, -1091f, 1000f);

var<private> global3: array<Struct_4, 12>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4) -> i32 {
    global0 = Struct_2(vec3<bool>(!any(!global0.c.c), global0.a.x, false), global0.b, global1[_wgslsmith_index_u32(~1u, 22u)]);
    let var_0 = arg_0.b;
    let var_1 = select(u_input.a, _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~global0.c.a, abs(global0.c.a)), 1u), vec2<u32>(56329u, ~firstTrailingBit(global0.c.a))), select(!global0.a.zz, !(!global0.c.c.xw), true));
    var var_2 = Struct_2(select(vec3<bool>(global0.a.x, any(select(vec3<bool>(true, global0.a.x, false), vec3<bool>(global0.c.e.x, global0.a.x, true), global0.c.e.x)), select(true, true, select(global0.a.x, global0.c.e.x, false))), !select(select(global0.c.c.yzz, vec3<bool>(global0.a.x, global0.c.c.x, global0.c.c.x), global0.c.c.x), !global0.c.c.wxw, true), global0.a.x), _wgslsmith_f_op_vec4_f32(max(global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-739f, 217f, global2[_wgslsmith_index_u32(55591u, 26u)], -1503f))) * global0.b))), global0.c);
    var_2 = Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1018f)), arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.d * var_2.b.x) - _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], arg_0.d, var_2.c.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_2.b.x)))))), Struct_1(global0.c.a | var_2.c.a, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.c.d, _wgslsmith_f_op_f32(-global0.c.d)))), !global0.c.c, 112f, !select(global0.a.xz, select(global0.a.zy, vec2<bool>(true, var_2.a.x), var_2.c.c.xy), vec2<bool>(true, false))));
    return var_0;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>) -> i32 {
    global2 = array<f32, 26>();
    let var_0 = global3[_wgslsmith_index_u32(0u, 12u)];
    global3 = array<Struct_4, 12>();
    let var_1 = _wgslsmith_div_vec3_i32(-select(var_0.c, select(_wgslsmith_mult_vec3_i32(var_0.c, var_0.c), firstLeadingBit(vec3<i32>(-19506i, var_0.b, -26724i)), vec3<bool>(true, true, true)), true), vec3<i32>(~func_3(Struct_4(var_0.a, var_0.b, var_0.c, var_0.d, 27700i)), select(-1i, firstLeadingBit(2147483647i), global0.a.x), var_0.a << (_wgslsmith_sub_u32(0u, u_input.a.x) % 32u)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(28120u, global0.c.a), 4294967295u, _wgslsmith_mult_u32(0u, global0.c.a)), select(vec3<u32>(global0.c.a, 74727u, 4294967295u) >> (vec3<u32>(8613u, 3746u, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(global0.c.a, u_input.a.x, u_input.a.x), global0.a)) % vec3<u32>(32u)));
    global1 = array<Struct_1, 22>();
    return ~abs(-1286i);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(-62i, abs(_wgslsmith_div_i32(29215i, -28352i)) ^ (func_2(global0.b.xz, vec3<bool>(false, global0.a.x, global0.a.x)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0.c.a, 1u, u_input.a.x), vec4<u32>(global0.c.a, u_input.a.x, u_input.a.x, u_input.a.x)) % 32u))) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~select(u_input.a, vec2<u32>(53096u, 1667u), global0.a.x), u_input.a), vec2<u32>(u_input.a.x ^ 1u, ~8636u) & u_input.a) % 32u);
    global0 = Struct_2(!global0.a, global0.b, global1[_wgslsmith_index_u32(~firstLeadingBit(~0u), 22u)]);
    global2 = array<f32, 26>();
    let var_1 = global0.c.a;
    var var_2 = Struct_1(max(_wgslsmith_add_u32(max(u_input.a.x, 29029u), _wgslsmith_mod_u32(global0.c.a, global0.c.a)) & ~24908u, u_input.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 26u)] - _wgslsmith_f_op_f32(sign(global0.b.x))))))), vec4<bool>(global0.a.x, all(select(global0.c.c, select(vec4<bool>(global0.c.c.x, true, false, true), vec4<bool>(global0.c.c.x, false, false, true), vec4<bool>(global0.c.e.x, false, global0.a.x, global0.c.e.x)), false)), var_0 < 63162i, false), 1f, global0.a.xy);
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.a, 1u), 22u)];
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(vec3<bool>(global0.c.e.x, true, all(func_1().c.zzw)), _wgslsmith_f_op_vec4_f32(sign(global0.b)), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1());
    var var_0 = _wgslsmith_add_u32(~20478u, ~select(global0.c.a, 6030u, any(global0.a.yz)));
    global0 = Struct_2(global0.c.c.xyy, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1537f, _wgslsmith_div_f32(global0.c.d, 422f), _wgslsmith_f_op_f32(-1164f - global2[_wgslsmith_index_u32(39101u, 26u)]), _wgslsmith_f_op_f32(-global0.b.x)), vec4<f32>(_wgslsmith_f_op_f32(global0.b.x - global0.c.d), global0.b.x, global0.b.x, _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(global0.c.a, 26u)]))))), global0.b)), global0.c);
    global1 = array<Struct_1, 22>();
    var var_1 = Struct_5(global0.b.xy, _wgslsmith_sub_i32(8831i, max(_wgslsmith_mod_i32(firstLeadingBit(-17411i), -54910i), 2147483647i)));
    var var_2 = Struct_4(~2147483647i, 2147483647i, ~vec3<i32>(_wgslsmith_mult_i32(var_1.b, 0i), var_1.b, 0i) ^ (~_wgslsmith_mod_vec3_i32(vec3<i32>(-10404i, 10829i, -25574i), vec3<i32>(-10106i, 1i, var_1.b)) >> (vec3<u32>(1u, 1u, countOneBits(u_input.a.x)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-var_1.a.x), -abs(var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-_wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, var_2.b), 19936i)), _wgslsmith_mult_i32(-28812i, var_1.b));
}

