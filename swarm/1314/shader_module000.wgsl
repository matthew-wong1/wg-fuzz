struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(-1105f, 1109f, 1501f, 132f)), vec4<i32>(2147483647i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), -1i, i32(-2147483648)));

var<private> global1: f32;

var<private> global2: array<f32, 26> = array<f32, 26>(1654f, 605f, 470f, 723f, 1160f, -608f, -1308f, -2182f, 1590f, -530f, -1000f, 159f, 223f, -1120f, 1330f, 681f, 340f, 842f, 1300f, -1000f, -1295f, 1342f, 1260f, -805f, 827f, -697f);

var<private> global3: vec2<u32> = vec2<u32>(40381u, 25173u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    var var_0 = ~select(_wgslsmith_add_vec4_u32(~vec4<u32>(91191u, u_input.d, 0u, u_input.b), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 67367u, 4294967295u, global3.x), vec4<u32>(31830u, u_input.d, u_input.d, u_input.b), vec4<u32>(87745u, 1u, global3.x, global3.x)), ~vec4<u32>(global3.x, 0u, 1u, u_input.b))), vec4<u32>(_wgslsmith_add_u32(u_input.d, 20193u) & _wgslsmith_sub_u32(u_input.d, 0u), _wgslsmith_sub_u32(78814u, global3.x << (u_input.d % 32u)), u_input.d, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(20064u, global3.x, global3.x, 0u), vec4<u32>(1721u, u_input.d, u_input.d, global3.x)), ~vec4<u32>(global3.x, u_input.d, 20699u, 56496u))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true)));
    let var_1 = vec4<bool>(true, true, true, true);
    global3 = firstLeadingBit(~abs(~var_0.xw) & _wgslsmith_mod_vec2_u32(select(var_0.yz, _wgslsmith_sub_vec2_u32(var_0.yz, var_0.yz), var_1.x), ~var_0.wy));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.a.x)));
    global3 = var_0.zx;
    return vec4<i32>(~(global0.b.x ^ global0.c.x), ~(~(i32(-1i) * -2147483647i)), u_input.c.x | ~global0.b.x, ~1i);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.a.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-119f))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, 2521f)) * 1201f)) * _wgslsmith_f_op_f32(-arg_0.a.a.x)), arg_0.a.a.x);
    global1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(sign(var_1)))), global0.a.a.x), -126f);
    global0 = Struct_2(arg_0.a, global0.b, _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, ~(-2147483647i), reverseBits(u_input.e), u_input.c.x), func_3()));
    let var_2 = !(!vec3<bool>(true, select(true, true, true), !(-3416i == arg_0.b.x)));
    return Struct_1(vec4<f32>(-1677f, var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(69314u, 26u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1193f, -1130f) + _wgslsmith_f_op_f32(var_0 - 266f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: u32) -> f32 {
    var var_0 = Struct_2(func_2(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1353f, arg_2, global0.a.a.x, 737f)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 27196i, -5974i, u_input.c.x), global0.c), vec4<i32>(global0.b.x, u_input.c.x, -1i, 1i) ^ vec4<i32>(global0.b.x, 1i, -20244i, 2147483647i), _wgslsmith_sub_vec4_i32(global0.b, vec4<i32>(global0.b.x, global0.b.x, u_input.a, 1517i))), vec4<i32>(arg_0, arg_0 << (1u % 32u), _wgslsmith_sub_i32(8197i, -1i), 0i))), _wgslsmith_sub_vec4_i32(~global0.b, global0.c), select(vec4<i32>(abs(u_input.a), ~arg_0, abs(2147483647i), global0.c.x), max(-global0.b, global0.b), all(vec3<bool>(true, true, true))) << (max(~vec4<u32>(u_input.d, u_input.b, global3.x, u_input.d) ^ vec4<u32>(39997u, 0u, 1u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(87215u, 51410u, 11565u, 11612u), _wgslsmith_mult_vec4_u32(vec4<u32>(18063u, 4294967295u, global3.x, 4294967295u), vec4<u32>(20989u, u_input.d, arg_3, global3.x)))) % vec4<u32>(32u)));
    global2 = array<f32, 26>();
    global3 = ~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(6672u, u_input.d), vec2<u32>(4294967295u, 0u), vec2<u32>(214u, 4294967295u) & vec2<u32>(1u, u_input.d))) ^ ~select(select(~vec2<u32>(u_input.b, arg_3), vec2<u32>(79637u, 49974u), vec2<bool>(false, false)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.d), vec2<u32>(7386u, arg_3)), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, true)));
    var var_1 = false;
    var_0 = Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(global0.a.a), global0.b, vec4<i32>(-5156i, 15814i, var_0.b.x, arg_0))), _wgslsmith_mult_vec4_i32(-var_0.b, -vec4<i32>(var_0.b.x, -32404i, 1i, arg_0)), -var_0.b)), global0.c, abs(_wgslsmith_mod_vec4_i32(global0.b, vec4<i32>(-22717i, -global0.b.x, min(-2147483647i, -2147483647i), abs(-2147483647i)))));
    return _wgslsmith_f_op_f32(566f - _wgslsmith_f_op_f32(global0.a.a.x - func_2(Struct_2(Struct_1(vec4<f32>(global0.a.a.x, var_0.a.a.x, -1045f, arg_1)), abs(global0.b), func_3())).a.x));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<bool>, arg_3: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global0.a.a.zzz);
    var var_1 = vec4<u32>(abs(~max(~global3.x, ~47148u)), global3.x, (~global3.x & _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3.x, u_input.d), vec3<u32>(global3.x, global3.x, u_input.d)), ~u_input.d)) | u_input.b, global3.x);
    global2 = array<f32, 26>();
    let var_2 = Struct_2(Struct_1(global0.a.a), vec4<i32>(i32(-1i) * -_wgslsmith_mult_i32(arg_0, global0.c.x), ~(-(i32(-1i) * -7672i)), -35585i, -global0.b.x), firstLeadingBit(~global0.c));
    global0 = var_2;
    return StorageBuffer(countOneBits(_wgslsmith_sub_i32(select(_wgslsmith_add_i32(arg_1, 72271i), abs(-1i), 39494i >= global0.c.x), -arg_1)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(abs(global0.b.x), min(0i, 24141i)), _wgslsmith_div_i32(var_2.b.x, arg_0), reverseBits(global0.b.x)), arg_1 ^ func_3().x), abs(u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 26>();
    let x = u_input.a;
    s_output = func_4(1i, ~(-1i), select(vec2<bool>(any(vec3<bool>(false, false, false)) | select(false, false, true), true), vec2<bool>(true, true), any(vec2<bool>(true, true)) & all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-2147483647i, _wgslsmith_f_op_f32(step(-2016f, global0.a.a.x)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.d, 26u)] - global2[_wgslsmith_index_u32(~global3.x, 26u)]), global3.x >> (4294967295u % 32u))) + 617f));
}

