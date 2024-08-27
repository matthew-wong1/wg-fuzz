struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: Struct_1;

var<private> global3: vec3<i32> = vec3<i32>(28778i, 1i, -1i);

var<private> global4: array<i32, 12>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32) -> i32 {
    var var_0 = min(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x), vec2<u32>(~52414u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 59296u, u_input.a.x, arg_0) | vec4<u32>(50272u, u_input.a.x, u_input.a.x, 4294967295u), ~vec4<u32>(38943u, 24269u, 4294967295u, 4294967295u))));
    var var_1 = Struct_1(!vec4<bool>(false, global1.x, true, true), -min(global0.b, ~global0.b) ^ vec3<i32>(~(~3407i), global4[_wgslsmith_index_u32(56996u, 12u)], ~global4[_wgslsmith_index_u32(var_0.x, 12u)] << ((4294967295u | var_0.x) % 32u)));
    var var_2 = Struct_1(vec4<bool>(true, true, all(select(vec4<bool>(global1.x, var_1.a.x, global1.x, false), select(vec4<bool>(true, global2.a.x, false, global0.a.x), global0.a, global0.a.x), var_1.a.x || true)), !global2.a.x), firstLeadingBit(~vec3<i32>(max(global3.x, global3.x), global0.b.x, global2.b.x)));
    var_1 = Struct_1(select(select(vec4<bool>(any(var_1.a.zwx), select(false, var_1.a.x, global2.a.x), arg_0 <= u_input.a.x, true), vec4<bool>(all(vec4<bool>(false, global2.a.x, var_1.a.x, true)), true, all(var_2.a.xwy), all(vec2<bool>(false, global1.x))), select(var_1.a, select(vec4<bool>(global2.a.x, var_2.a.x, true, global1.x), var_1.a, var_1.a), any(global0.a))), vec4<bool>(any(global2.a) && any(vec4<bool>(global1.x, true, global2.a.x, true)), true != any(vec4<bool>(global0.a.x, global1.x, var_2.a.x, false)), any(select(vec3<bool>(var_1.a.x, global0.a.x, var_2.a.x), vec3<bool>(true, false, false), global2.a.ywx)), all(!global2.a)), all(!vec3<bool>(global1.x, global1.x, global0.a.x))), -_wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, var_1.b.x, arg_1) & min(global2.b, vec3<i32>(28588i, global4[_wgslsmith_index_u32(arg_0, 12u)], 19195i)), -vec3<i32>(arg_1, 11533i, var_1.b.x), global0.b));
    let var_3 = Struct_1(vec4<bool>(global2.a.x, false, global2.a.x, !any(var_2.a)), _wgslsmith_mult_vec3_i32(-firstLeadingBit(min(var_2.b, var_1.b)), _wgslsmith_div_vec3_i32(-var_2.b, _wgslsmith_div_vec3_i32(var_1.b ^ global0.b, var_1.b))));
    return -6819i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(!(!global1.x), false, !global2.a.x, global1.x), global2.b);
    let var_1 = Struct_1(!select(vec4<bool>(true, var_0.a.x, global0.a.x, any(global0.a)), !var_0.a, ~1i >= func_3(0u, -1i)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(reverseBits(-1i), -949i | global2.b.x, global2.b.x)), _wgslsmith_mult_vec3_i32(~vec3<i32>(var_0.b.x, global0.b.x, -23053i), _wgslsmith_add_vec3_i32(var_0.b ^ vec3<i32>(global2.b.x, 22574i, 1904i), firstLeadingBit(vec3<i32>(8123i, global3.x, global2.b.x)))), ~max(global0.b, vec3<i32>(4612i, 1i, global3.x))));
    var_0 = var_1;
    global0 = Struct_1(global2.a, ~vec3<i32>(_wgslsmith_dot_vec2_i32(global3.zx, vec2<i32>(1i, global2.b.x)) & global2.b.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 12u)], 1i, global4[_wgslsmith_index_u32(u_input.a.x, 12u)], global4[_wgslsmith_index_u32(0u, 12u)]), min(vec4<i32>(52512i, var_0.b.x, 25838i, global2.b.x), vec4<i32>(-2147483647i, 17234i, global4[_wgslsmith_index_u32(4294967295u, 12u)], 2147483647i))), _wgslsmith_clamp_i32(25936i, global0.b.x << (u_input.a.x % 32u), -2280i)));
    var var_2 = false;
    return var_1;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = u_input.a.x;
    var var_1 = func_2();
    let var_2 = func_2();
    var var_3 = var_2;
    return func_2();
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(func_2().a, global0.b);
    global3 = ~vec3<i32>(arg_1.b.x ^ _wgslsmith_div_i32(_wgslsmith_mod_i32(global3.x, -19097i), -1i), 0i << (~countOneBits(u_input.a.x) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, -global2.b.x, firstLeadingBit(-41160i)), ~(-var_0.b)));
    let var_1 = global0.b;
    let var_2 = any(vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(arg_0.x)), arg_1.a.x)) <= 993f, true || (func_1(global0.a, 43709i).a.x != (arg_1.a.x | false)), !all(select(vec3<bool>(global0.a.x, false, global2.a.x), global0.a.xzy, global1.x)), any(global0.a.yxw)));
    let var_3 = Struct_1(select(arg_1.a, vec4<bool>(true, u_input.a.x < 27232u, all(func_1(arg_1.a, global4[_wgslsmith_index_u32(0u, 12u)]).a.zx), global1.x), !(!func_1(vec4<bool>(arg_1.a.x, false, arg_1.a.x, true), global0.b.x).a)), vec3<i32>(~(var_0.b.x << (u_input.a.x % 32u)), -1i, -11417i) | _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(13265i, -1i), i32(-1i) * -923i, -1i), vec3<i32>(var_1.x, var_0.b.x, -45417i)));
    return vec3<u32>(u_input.a.x, 1u, _wgslsmith_sub_u32(10278u, 4294967295u ^ (~u_input.a.x ^ 8999u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b >> (func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(524f, 1313f)) - _wgslsmith_f_op_f32(377f - 804f)), -736f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1965f)) * -769f)), func_1(vec4<bool>(select(false, false, false), !global1.x, all(vec4<bool>(false, global0.a.x, false, false)), false), -global2.b.x)) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(3287f, 1127f, -732f, -495f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1014f, -535f, 2099f, -1905f)), vec4<f32>(1000f, 2266f, 526f, 449f), global1.x)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-436f, _wgslsmith_f_op_f32(-1000f * 681f), -915f, -1021f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(503f, -581f, -787f, 109f) - vec4<f32>(-545f, 929f, -116f, 389f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(265f, -997f, -991f, 1302f))))))));
    var var_2 = !global0.a;
    var var_3 = global0.a.zyy;
    let var_4 = !(!func_1(select(func_2().a, func_1(vec4<bool>(true, var_3.x, false, global2.a.x), -16731i).a, vec4<bool>(false, false, global2.a.x, global0.a.x)), ~global4[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 12u)]).a);
    var var_5 = Struct_1(select(select(func_2().a, func_2().a, select(vec4<bool>(var_4.x, false, var_2.x, var_3.x), global0.a, true)), var_4, !func_1(vec4<bool>(global1.x, true, false, var_4.x), _wgslsmith_clamp_i32(global3.x, global0.b.x, global2.b.x)).a), ~_wgslsmith_div_vec3_i32(-vec3<i32>(global0.b.x, global3.x, global2.b.x) & _wgslsmith_mod_vec3_i32(global0.b, global2.b), global2.b ^ vec3<i32>(31536i, global3.x, global4[_wgslsmith_index_u32(0u, 12u)])));
    let var_6 = var_1.wyy;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, 1i, global2.b, vec4<u32>(firstLeadingBit(u_input.a.x), 4294967295u, u_input.a.x, _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(0u, 44651u, 0u, u_input.a.x)), ~(vec4<u32>(u_input.a.x, 54450u, 0u, 0u) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u) % vec4<u32>(32u))))), u_input.a.xz & select(vec2<u32>(max(4294967295u, u_input.a.x), 38924u), min(reverseBits(u_input.a.xx), select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), var_3.x)), (global4[_wgslsmith_index_u32(u_input.a.x, 12u)] & 1i) <= min(22840i, -2147483647i)));
}

