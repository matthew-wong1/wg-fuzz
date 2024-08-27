struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: bool = false;

var<private> global2: array<Struct_2, 31>;

var<private> global3: Struct_2;

var<private> global4: array<vec3<u32>, 26>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_div_i32(-firstLeadingBit(10690i), _wgslsmith_sub_i32(firstLeadingBit(max(0i, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(-17233i, arg_0), vec2<i32>(global0.x, -1i))) | _wgslsmith_add_i32(0i, -2147483647i & (global3.c.x >> (u_input.c.x % 32u))));
    var var_1 = vec2<bool>(!(!(!any(vec3<bool>(true, false, true)))), !(!(!(!arg_1.a))));
    var var_2 = Struct_2(-min(vec2<i32>(-40777i, ~(-2147483647i)), min(vec2<i32>(u_input.b, 19004i) | vec2<i32>(global3.a.x, 2147483647i), global3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), global0.wz, global3.e, global3.d);
    var_0 = -2147483647i;
    var var_3 = arg_1;
    return global3.e.b.x;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> u32 {
    global3 = Struct_2(vec2<i32>(-global0.x, _wgslsmith_add_i32(~_wgslsmith_mod_i32(global3.c.x, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.x, arg_1.c.x, u_input.a), vec3<i32>(4616i, u_input.a, global0.x) << (vec3<u32>(4294967295u, 22450u, u_input.d.x) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.d.c))), ~(-vec2<i32>(18936i, global3.c.x) ^ reverseBits(-vec2<i32>(-3133i, -1i))), Struct_1(u_input.d.x < func_3(~global3.c.x, arg_1.e, !arg_2), abs(vec2<u32>(countOneBits(1u), select(1u, global3.e.b.x, true))), arg_1.d.c, 4294967295u), global3.e);
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.e.c, global3.b, arg_1.b))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-144f, -302f, arg_1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1091f, global3.b)), select(vec3<bool>(arg_2, true, global3.e.a), vec3<bool>(true, arg_1.d.a, arg_2), vec3<bool>(arg_2, global3.d.a, true)))), select(select(vec3<bool>(arg_1.d.a, false, arg_1.d.a), vec3<bool>(false, true, false), global3.e.a), vec3<bool>(arg_1.e.a, global3.e.a, true), all(vec2<bool>(false, arg_2))))), vec3<f32>(global3.b, _wgslsmith_f_op_f32(-1818f + _wgslsmith_f_op_f32(trunc(global3.b))), -686f), true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(731f, 1748f)), _wgslsmith_f_op_f32(min(global3.b, var_0.x)), -1594f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), vec3<f32>(1f, var_0.x, -844f)))));
    let var_2 = Struct_1(!global3.e.a, ~vec2<u32>(global3.d.d, abs(~arg_0)), var_1.x, firstTrailingBit(~u_input.c.x));
    global2 = array<Struct_2, 31>();
    return arg_1.d.d;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32) -> vec4<i32> {
    var var_0 = !select(vec4<bool>(true, global3.e.a, false, global3.a.x <= 2147483647i), vec4<bool>(any(!vec4<bool>(true, global3.e.a, global3.e.a, global3.e.a)), !(!global3.e.a), any(select(vec3<bool>(global3.e.a, global3.e.a, false), vec3<bool>(global3.e.a, global3.d.a, false), vec3<bool>(global3.d.a, false, global3.e.a))), all(select(vec3<bool>(false, true, true), vec3<bool>(global3.e.a, global3.e.a, global3.e.a), vec3<bool>(global3.d.a, global3.d.a, false)))), false && any(select(vec4<bool>(false, global3.d.a, global3.e.a, false), vec4<bool>(global3.e.a, global3.d.a, true, global3.d.a), vec4<bool>(global3.d.a, global3.e.a, true, true))));
    global0 = min(-vec4<i32>(_wgslsmith_mult_i32(~global0.x, ~global3.c.x), -abs(u_input.a), max(-u_input.b, -682i), firstLeadingBit(0i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-2672i, global3.a.x, global3.c.x, 0i), -vec4<i32>(-11958i, global3.c.x, global0.x, -2147483647i)), select(-vec4<i32>(global0.x, global3.c.x, -1i, 2147483647i), -vec4<i32>(-34258i, global0.x, global0.x, 1i), true), vec4<i32>(u_input.b, -1i, _wgslsmith_sub_i32(global3.c.x, -1i), -1i)) | -vec4<i32>(firstLeadingBit(global0.x), global3.a.x, ~global3.a.x, u_input.a));
    var var_1 = !select(select(select(vec4<bool>(false, true, var_0.x, true), select(vec4<bool>(true, var_0.x, global3.d.a, true), vec4<bool>(global3.e.a, false, global3.d.a, global3.d.a), true), !vec4<bool>(var_0.x, true, false, false)), vec4<bool>(true, any(vec4<bool>(true, var_0.x, false, var_0.x)), all(vec3<bool>(var_0.x, true, var_0.x)), true), select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, global3.e.a, true), global3.d.a), !vec4<bool>(global3.d.a, false, false, true), select(vec4<bool>(global3.e.a, false, global3.d.a, var_0.x), vec4<bool>(false, global3.e.a, global3.d.a, false), global3.d.a))), select(select(select(vec4<bool>(global3.d.a, global3.e.a, true, global3.d.a), vec4<bool>(false, false, global3.d.a, global3.e.a), vec4<bool>(false, false, var_0.x, false)), select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, global3.e.a, var_0.x), vec4<bool>(var_0.x, global3.d.a, true, false)), select(false, false, global3.e.a)), select(select(vec4<bool>(false, global3.e.a, var_0.x, true), vec4<bool>(global3.e.a, false, false, global3.d.a), vec4<bool>(var_0.x, false, global3.e.a, true)), select(vec4<bool>(global3.e.a, true, false, global3.d.a), vec4<bool>(global3.e.a, var_0.x, false, global3.e.a), vec4<bool>(global3.d.a, false, false, false)), !vec4<bool>(false, false, global3.d.a, true)), any(!vec4<bool>(global3.e.a, false, var_0.x, global3.d.a))), vec4<bool>(~12855u == u_input.d.x, all(vec2<bool>(var_0.x, false)), true, !all(vec2<bool>(false, var_0.x))));
    global1 = any(vec4<bool>(var_1.x || any(select(vec4<bool>(global3.d.a, false, false, global3.d.a), vec4<bool>(true, true, global3.e.a, global3.d.a), vec4<bool>(var_1.x, true, true, var_1.x))), any(select(!var_0.zz, var_1.wx, var_0.xx)), !((10382i | global3.a.x) >= min(-1i, global3.c.x)), false));
    let var_2 = false;
    return countOneBits(vec4<i32>(global0.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global0.zww, global0.zww), global0.x), _wgslsmith_clamp_i32(-u_input.b, 0i, _wgslsmith_add_i32(reverseBits(38085i), -6530i)), _wgslsmith_dot_vec4_i32(max(vec4<i32>(18673i, global3.a.x, 21038i, 35651i), vec4<i32>(global0.x, 3810i, 2147483647i, 0i)) << ((vec4<u32>(arg_0.x, 0u, 0u, global3.e.d) & vec4<u32>(29334u, u_input.c.x, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(-vec4<i32>(-66905i, global3.c.x, -8288i, 2147483647i), abs(vec4<i32>(0i, global3.a.x, u_input.a, -2147483647i))))));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: vec3<u32>) -> u32 {
    global2 = array<Struct_2, 31>();
    global0 = ~_wgslsmith_add_vec4_i32(abs(vec4<i32>(23407i, global3.a.x, arg_2.x, u_input.b) ^ vec4<i32>(-9838i, arg_2.x, 45459i, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, global3.a.x, u_input.a, u_input.a), vec4<i32>(1i, u_input.a, 2147483647i, u_input.b)) << (vec4<u32>(arg_1.x, arg_3.x, 4294967295u, global3.d.b.x) % vec4<u32>(32u))) ^ func_4(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(26914u, 0u)) & u_input.d.yz, arg_3.xz | global3.e.b), func_2(29703u, global2[_wgslsmith_index_u32(1u, 31u)], false));
    global0 = ~(vec4<i32>(-arg_2.x, 2147483647i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, arg_2.x, 4231i), vec4<i32>(-1i, global0.x, arg_2.x, global3.c.x))), u_input.a) | select(vec4<i32>(u_input.b, arg_2.x, -30824i, -1i) >> (u_input.c % vec4<u32>(32u)), vec4<i32>(0i, i32(-1i) * -40053i, abs(-2147483647i), u_input.b), global3.d.a));
    let var_0 = Struct_2(vec2<i32>(arg_2.x, _wgslsmith_clamp_i32(min(1i, global0.x), global0.x | global0.x, countOneBits(2147483647i)) >> (max(~global3.d.b.x, max(arg_1.x, arg_1.x)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), global3.d.c))), arg_2.zy, global3.e, Struct_1(true, arg_3.zy, arg_0, select(func_3(23423i, Struct_1(global3.e.a, vec2<u32>(global3.e.d, arg_3.x), arg_0, 4294967295u), true), arg_1.x >> (_wgslsmith_sub_u32(4294967295u, 0u) % 32u), global3.e.a)));
    let var_1 = !(!select(!vec3<bool>(var_0.d.a, true, var_0.e.a), !(!vec3<bool>(false, true, global3.e.a)), select(vec3<bool>(global3.e.a, global3.d.a, global3.d.a), select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.d.a, false), var_0.e.a), vec3<bool>(var_0.d.a, true, global3.e.a))));
    return 28590u;
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: i32, arg_3: u32) -> i32 {
    global2 = array<Struct_2, 31>();
    let var_0 = arg_0.x;
    var var_1 = ~global0.x ^ firstLeadingBit(min(_wgslsmith_div_i32(28027i, 25519i) >> (u_input.c.x % 32u), 1i));
    var var_2 = 1u >> (arg_3 % 32u);
    let var_3 = arg_0.zw;
    return firstLeadingBit(firstTrailingBit(countOneBits(firstLeadingBit(global3.a.x) ^ -global3.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_i32(global0.wxw, ~reverseBits(global0.xyw) & ~_wgslsmith_sub_vec3_i32(vec3<i32>(46628i, global0.x, 41846i), reverseBits(global0.yzy)));
    var var_1 = 2147483647i;
    global1 = true;
    global0 = vec4<i32>(-1i, _wgslsmith_sub_i32(var_0.x, 1i), func_5(vec4<bool>(any(select(vec4<bool>(true, global3.e.a, global3.e.a, global3.e.a), vec4<bool>(false, global3.d.a, true, true), true)), true, false, !global3.d.a), !(!global3.d.a & (global3.d.a & true)), _wgslsmith_sub_i32(1577i, -var_0.x), func_1(_wgslsmith_f_op_f32(-global3.b), abs(u_input.c.wx) >> (u_input.d.ww % vec2<u32>(32u)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, global0.x, global0.x), var_0, vec3<i32>(0i, 40390i, var_0.x)), vec3<i32>(global0.x, -2147483647i, global0.x), true), firstLeadingBit(global4[_wgslsmith_index_u32(~u_input.e, 26u)]))), _wgslsmith_mod_i32(countOneBits(-11661i), var_0.x));
    var var_2 = global3.d;
    var_1 = _wgslsmith_add_i32(-(~(~0i)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -10397i) ^ var_0.xz, _wgslsmith_sub_vec2_i32(~vec2<i32>(2147483647i, 55461i), -vec2<i32>(38759i, global3.c.x))), _wgslsmith_clamp_vec2_i32(~global3.a, global3.c, -(~var_0.yz)), !select(!vec2<bool>(var_2.a, global3.d.a), !vec2<bool>(var_2.a, global3.e.a), !global3.d.a)), global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -13712i) ^ vec2<i32>(-2147483647i, 40658i), -(~global0.xw)) >> (45662u % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c - 399f) * _wgslsmith_f_op_f32(step(2180f, 644f)))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -450f)));
}

