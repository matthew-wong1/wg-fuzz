struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 15>;

var<private> global2: Struct_2 = Struct_2(vec4<u32>(24293u, 34972u, 0u, 4294967295u), Struct_1(vec2<bool>(true, true)), 65081u);

var<private> global3: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec4<u32>(4294967295u, 1u, 1u, 1u), Struct_1(vec2<bool>(false, false)), 2016u), Struct_2(vec4<u32>(1u, 33894u, 55057u, 27141u), Struct_1(vec2<bool>(true, false)), 35022u), Struct_2(vec4<u32>(23254u, 56428u, 1u, 67059u), Struct_1(vec2<bool>(false, false)), 1u), Struct_2(vec4<u32>(56226u, 1u, 0u, 15910u), Struct_1(vec2<bool>(false, true)), 0u), Struct_2(vec4<u32>(31100u, 4294967295u, 0u, 22958u), Struct_1(vec2<bool>(true, false)), 1u), Struct_2(vec4<u32>(43683u, 31020u, 11250u, 4294967295u), Struct_1(vec2<bool>(true, false)), 55632u), Struct_2(vec4<u32>(39469u, 69295u, 4294967295u, 4294967295u), Struct_1(vec2<bool>(true, true)), 21556u), Struct_2(vec4<u32>(41904u, 1u, 74729u, 4294967295u), Struct_1(vec2<bool>(true, true)), 23484u), Struct_2(vec4<u32>(0u, 0u, 1u, 4294967295u), Struct_1(vec2<bool>(false, false)), 36859u), Struct_2(vec4<u32>(4294967295u, 1u, 22877u, 1u), Struct_1(vec2<bool>(false, false)), 29467u), Struct_2(vec4<u32>(1u, 4185u, 51865u, 4294967295u), Struct_1(vec2<bool>(false, true)), 1u), Struct_2(vec4<u32>(17679u, 1u, 1u, 4294967295u), Struct_1(vec2<bool>(true, true)), 4294967295u), Struct_2(vec4<u32>(22987u, 1u, 7006u, 1u), Struct_1(vec2<bool>(true, true)), 4294967295u), Struct_2(vec4<u32>(40160u, 55728u, 32092u, 4294967295u), Struct_1(vec2<bool>(true, true)), 1u), Struct_2(vec4<u32>(24297u, 45512u, 96816u, 78661u), Struct_1(vec2<bool>(false, false)), 1u), Struct_2(vec4<u32>(0u, 11726u, 41909u, 0u), Struct_1(vec2<bool>(true, false)), 29489u), Struct_2(vec4<u32>(30260u, 5843u, 9416u, 1u), Struct_1(vec2<bool>(false, false)), 0u), Struct_2(vec4<u32>(4672u, 42580u, 13699u, 70160u), Struct_1(vec2<bool>(false, false)), 62838u), Struct_2(vec4<u32>(1u, 1u, 5395u, 1u), Struct_1(vec2<bool>(true, true)), 4294967295u), Struct_2(vec4<u32>(4294967295u, 0u, 4294967295u, 64609u), Struct_1(vec2<bool>(false, false)), 26516u), Struct_2(vec4<u32>(1u, 1u, 18893u, 0u), Struct_1(vec2<bool>(true, false)), 0u), Struct_2(vec4<u32>(66228u, 0u, 24518u, 4294967295u), Struct_1(vec2<bool>(false, true)), 14974u), Struct_2(vec4<u32>(0u, 49069u, 1u, 1u), Struct_1(vec2<bool>(false, true)), 1u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = -_wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b.x) << (global2.a % vec4<u32>(32u))), vec4<i32>(_wgslsmith_clamp_i32(-u_input.b.x, select(1390i, u_input.a.x, global2.b.a.x), u_input.b.x), ~1i, firstTrailingBit(-10734i), -23210i ^ _wgslsmith_sub_i32(u_input.a.x, 3940i)));
    let var_1 = !vec4<bool>(!arg_0, all(select(!global2.b.a, global2.b.a, 6103u == global0.x)), global2.b.a.x, !any(vec3<bool>(true, true, arg_0)));
    var var_2 = global2.a.yz;
    let var_3 = global3[_wgslsmith_index_u32(~firstLeadingBit(reverseBits(global2.a.x >> (1u % 32u))), 23u)];
    var_2 = ~countOneBits(_wgslsmith_mod_vec2_u32(~var_3.a.yw, _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, global0.x), vec2<u32>(global0.x, global2.a.x)))) & vec2<u32>(global2.a.x, 4294967295u);
    return vec4<u32>(countOneBits(1u), ~(~(~_wgslsmith_clamp_u32(12810u, var_2.x, global0.x))), max(18594u >> (((global2.a.x >> (43123u % 32u)) & _wgslsmith_mod_u32(1u, var_3.c)) % 32u), ~global2.a.x), 62951u);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<i32> {
    global2 = arg_3;
    var var_0 = arg_2.b;
    var var_1 = Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(arg_2.c, 0u), _wgslsmith_mult_u32(0u, ~1u), abs(~9025u), _wgslsmith_mod_u32(~arg_3.a.x, ~1u)), abs(_wgslsmith_mod_vec4_u32(arg_3.a, max(vec4<u32>(arg_2.c, global2.a.x, global2.a.x, 0u), arg_3.a))), countOneBits(~arg_3.a | func_3(global2.b.a.x))), arg_2.b, _wgslsmith_dot_vec3_u32(firstLeadingBit(abs(vec3<u32>(11952u, arg_2.c, 1u))), ~firstLeadingBit(~arg_3.a.wwy)));
    var var_2 = _wgslsmith_f_op_f32(arg_0 + arg_0);
    let var_3 = arg_2.b.a.x;
    return -(vec3<i32>(u_input.a.x << (1u % 32u), 21814i, _wgslsmith_clamp_i32(-15335i, u_input.a.x, -44622i)) >> (arg_2.a.zxw % vec3<u32>(32u))) | ~reverseBits(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, arg_1), vec3<i32>(arg_1, -1i, u_input.b.x)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool) -> u32 {
    global0 = vec2<u32>(4294967295u, global2.a.x);
    global1 = array<Struct_1, 15>();
    let var_0 = _wgslsmith_sub_u32(~global0.x, global2.c);
    let var_1 = _wgslsmith_mult_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(-2147483647i, ~arg_1), u_input.b.x, -54974i), max(_wgslsmith_add_vec3_i32(max(~vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(-1i, u_input.a.x, arg_1) | vec3<i32>(u_input.a.x, 2147483647i, arg_1)), func_2(-1000f, -1i & u_input.b.x, global3[_wgslsmith_index_u32(~1u, 23u)], global3[_wgslsmith_index_u32(~1u, 23u)])), ((vec3<i32>(u_input.b.x, 1i, u_input.b.x) << (vec3<u32>(var_0, 10886u, 4294967295u) % vec3<u32>(32u))) ^ abs(vec3<i32>(-34168i, 24142i, 0i))) << (vec3<u32>(var_0, ~42229u, 0u & global2.c) % vec3<u32>(32u))));
    global0 = ~(~_wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(global2.a.ww, vec2<u32>(36931u, var_0)), _wgslsmith_div_vec2_u32(~global2.a.zy, select(global2.a.xx, global2.a.yy, vec2<bool>(global2.b.a.x, false))), ~(~global2.a.zw)));
    return 0u >> (1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(49151u, ~53452u, 4294967295u << (global0.x % 32u)), vec3<u32>(global0.x, 4610u, global0.x) ^ (global2.a.zyz << (global2.a.wxz % vec3<u32>(32u)))) << (86413u % 32u), max(1u, ~1u | _wgslsmith_dot_vec2_u32(countOneBits(global2.a.wy), _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, global2.c), global2.a.yy))));
    var var_0 = true;
    global1 = array<Struct_1, 15>();
    global3 = array<Struct_2, 23>();
    let var_1 = min(select(global2.a.yyx, vec3<u32>(global2.c, global2.c, _wgslsmith_add_u32(4294967295u, firstLeadingBit(4294967295u))), global2.b.a.x), global2.a.zyz);
    let var_2 = Struct_2(vec4<u32>(_wgslsmith_add_u32(~max(0u, global0.x), 8502u), 0u, var_1.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(func_1(global0.x, u_input.b.x, true), _wgslsmith_sub_u32(var_1.x, global0.x)), 68763u, countOneBits(var_1.x & var_1.x))), Struct_1(!vec2<bool>(true, -1i == u_input.b.x)), 56230u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(_wgslsmith_div_u32(min(global2.c, var_1.x), reverseBits(global0.x)), 0u), max(vec4<u32>(firstTrailingBit(global2.c), reverseBits(_wgslsmith_mod_u32(1u, global2.a.x)), 0u, min(var_1.x, 0u)), abs(~(~vec4<u32>(global0.x, var_1.x, global0.x, 67830u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1831f, -1107f) - vec2<f32>(-1779f, -1127f)) - vec2<f32>(124f, -562f)))));
}

