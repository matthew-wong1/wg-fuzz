struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<i32>(22325i, -34805i, 1i), Struct_3(vec2<i32>(491i, 21415i), vec2<u32>(58303u, 20886u)));

var<private> global1: u32 = 54540u;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), 72843i, 1i, -1i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> bool {
    var var_0 = Struct_4(global2.xxy, Struct_3(_wgslsmith_sub_vec2_i32(vec2<i32>(-12525i, arg_0.x), ~(arg_1.a >> (vec2<u32>(4294967295u, arg_1.b.x) % vec2<u32>(32u)))), (global0.b.b >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, global0.b.b.x), vec2<u32>(u_input.b.x, global0.b.b.x)) % vec2<u32>(32u))) & ~global0.b.b));
    let var_1 = ~u_input.a;
    var var_2 = select(!vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, true), vec4<bool>(reverseBits(abs(arg_0.x)) < -(~0i), true, !all(vec2<bool>(true, true)), false), select(select(vec4<bool>(false, false, any(vec2<bool>(true, true)), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), vec4<bool>(any(vec3<bool>(true, false, false)) == true, true, firstLeadingBit(19397u) < firstLeadingBit(u_input.b.x), true), all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), true))));
    var var_3 = Struct_5(arg_1, ~(firstLeadingBit(~vec3<u32>(global0.b.b.x, 11664u, var_1.x)) | ~min(u_input.a, vec3<u32>(global0.b.b.x, arg_1.b.x, 83830u))), !vec2<bool>(true, select(true, any(var_2.xzx), !var_2.x)), vec2<bool>(var_2.x || !var_2.x, true));
    var var_4 = _wgslsmith_sub_vec3_i32(max(vec3<i32>(_wgslsmith_mod_i32(1i, arg_1.a.x), firstLeadingBit(2147483647i), -var_0.b.a.x), _wgslsmith_mod_vec3_i32(global0.a, arg_0.wxx) >> (abs(vec3<u32>(2148u, global0.b.b.x, 0u)) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(53942u ^ var_0.b.b.x, arg_1.b.x, 0u), _wgslsmith_sub_vec3_u32(u_input.a, ~vec3<u32>(var_1.x, var_1.x, var_1.x))) % vec3<u32>(32u)), -(~vec3<i32>(global2.x, 0i, var_0.a.x)));
    return all(select(vec4<bool>(true, var_3.d.x, false, true), !select(select(vec4<bool>(var_3.c.x, false, var_3.d.x, var_2.x), vec4<bool>(var_3.d.x, false, false, false), false), vec4<bool>(true, var_2.x, true, false), all(vec4<bool>(var_2.x, false, false, true))), true));
}

fn func_2() -> vec2<u32> {
    global0 = Struct_4(global2.zwy, Struct_3(min(vec2<i32>(global2.x, 1i) ^ vec2<i32>(-4693i, -29374i), ~global2.yw), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 152697u) >> (u_input.b.yx % vec2<u32>(32u)), global0.b.b)));
    let var_0 = Struct_5(Struct_3(global0.b.a, ~vec2<u32>(select(33432u, 72326u, true), ~0u)), u_input.a, vec2<bool>(!func_3(vec4<i32>(global0.a.x, global2.x, global0.b.a.x, -34320i), Struct_3(global2.zy, u_input.a.xx)), true), vec2<bool>(true, true));
    global1 = global0.b.b.x;
    global1 = global0.b.b.x;
    global1 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(15898u, 0u, min(var_0.b.x, u_input.b.x)), _wgslsmith_mod_vec3_u32(countOneBits(var_0.b << (u_input.a % vec3<u32>(32u))), ~vec3<u32>(7410u, 4294967295u, 107899u))), u_input.a.x);
    return select(vec2<u32>(var_0.b.x, _wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(min(u_input.a.x, 4294967295u), abs(global0.b.b.x)))), u_input.a.xx, vec2<bool>(true, var_0.c.x));
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    var var_0 = Struct_3(global0.a.yy, abs(~func_2()));
    var var_1 = global0.b;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1491f);
    global0 = Struct_4(global2.wyw, global0.b);
    return Struct_4(vec3<i32>(1i, _wgslsmith_sub_i32(-(-44028i >> (u_input.a.x % 32u)), global0.a.x), _wgslsmith_div_i32(~1i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global2.x), vec2<i32>(var_0.a.x, -2147483647i)), 2147483647i)), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(-(global2.xy & global2.zz), _wgslsmith_mod_vec2_i32(global0.b.a, min(~vec2<i32>(global0.a.x, global0.a.x), abs(vec2<i32>(global0.b.a.x, global2.x))))), -(-23942i ^ global2.x));
    global0 = func_1(Struct_1(u_input.a.yx, vec2<bool>(all(vec3<bool>(false, true, true)), true)));
    let var_1 = false;
    let var_2 = var_1 | all(vec4<bool>(true && select(true, var_1, false), global0.b.b.x < u_input.b.x, -12475i < (var_0.x ^ var_0.x), -31888i == global2.x));
    var var_3 = ~(-select(vec2<i32>(1i, _wgslsmith_sub_i32(-2147483647i, global0.b.a.x)), -global0.b.a, !vec2<bool>(var_1, false)));
    var var_4 = select(select(select(select(!vec2<bool>(var_1, var_2), vec2<bool>(true, true), global0.b.b.x != u_input.b.x), vec2<bool>(func_3(vec4<i32>(var_3.x, var_3.x, -33677i, 36028i), Struct_3(var_0, vec2<u32>(86682u, 31875u))), true), !select(vec2<bool>(var_1, true), vec2<bool>(var_1, true), false)), vec2<bool>(select(true, false, false), true), vec2<bool>(var_1, -global0.b.a.x >= 36009i)), vec2<bool>(var_2, false), !vec2<bool>(!all(vec2<bool>(true, true)), all(!vec2<bool>(var_2, false))));
    global2 = _wgslsmith_mod_vec4_i32(~(~(countOneBits(vec4<i32>(var_3.x, global0.a.x, global0.b.a.x, -18738i)) << (firstLeadingBit(vec4<u32>(4294967295u, 2137u, u_input.a.x, u_input.b.x)) % vec4<u32>(32u)))), vec4<i32>(1i, _wgslsmith_add_i32(-13668i, 26103i), _wgslsmith_mult_i32(~countOneBits(2147483647i), global2.x), -1i));
    global1 = u_input.a.x;
    global2 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(global0.b.a.x, var_3.x), ~vec2<i32>(-2147483647i, var_3.x)), -11221i | firstTrailingBit(2147483647i), _wgslsmith_clamp_i32(0i, reverseBits(0i), select(global0.a.x, 3951i, true)), global0.a.x | -global0.b.a.x), ~vec4<i32>(global0.b.a.x | var_3.x, min(global0.b.a.x, 2147483647i), global2.x, _wgslsmith_mult_i32(0i, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~global0.b.b.x >> (_wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.b.wwx & vec3<u32>(4294967295u, u_input.b.x, 4294967295u), countOneBits(u_input.b.xxx))) % 32u));
}

