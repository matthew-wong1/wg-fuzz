struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<f32> = vec4<f32>(-101f, -1311f, -587f, 607f);

var<private> global2: u32 = 27418u;

var<private> global3: Struct_3;

var<private> global4: array<u32, 28>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global2 = 1u;
    global4 = array<u32, 28>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.d.d.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-579f, _wgslsmith_f_op_f32(step(global0.d.d.a, 1f)))) * _wgslsmith_f_op_f32(step(-1016f, 243f))));
    let var_1 = Struct_2(global0.d.c, global0.e.d.b.zw, _wgslsmith_clamp_vec2_u32(global3.d.a, _wgslsmith_clamp_vec2_u32(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 35340u), global0.d.c, vec2<u32>(0u, u_input.b)), global3.d.c), _wgslsmith_mod_vec2_u32(global0.e.c, abs(vec2<u32>(1u, u_input.b))), ~(global3.d.a ^ vec2<u32>(1u, 22203u))), ~global3.e.a), global3.c, _wgslsmith_div_u32(30712u, _wgslsmith_clamp_u32(u_input.a, ~global3.d.a.x, u_input.a)));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global1.yy + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1721f, _wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-978f, 1309f) * vec2<f32>(global1.x, var_0))), true)))));
    return (i32(-1i) * -(-1i << (_wgslsmith_sub_u32(global3.e.c.x, 17966u) % 32u))) << (firstTrailingBit(firstLeadingBit(~1u)) % 32u);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec2<u32>) -> vec2<u32> {
    global3 = Struct_3(vec2<i32>(9202i, _wgslsmith_dot_vec4_i32(firstLeadingBit(global0.e.d.b), vec4<i32>(firstLeadingBit(19785i), 1i ^ arg_1, 5193i, -global3.a.x))), Struct_1(-1552f, vec4<i32>(u_input.c, u_input.c, func_3(vec3<i32>(u_input.c, 2147483647i, global0.e.b.x)) & -u_input.c, 2147483647i)), Struct_1(_wgslsmith_f_op_f32(select(1001f, global3.d.d.a, true)), _wgslsmith_div_vec4_i32(global0.b.b, ~global0.e.d.b & ~global0.c.b)), Struct_2(select(_wgslsmith_mult_vec2_u32(~global0.d.c, select(arg_2, vec2<u32>(u_input.b, 0u), arg_0)), global3.e.a, vec2<bool>(true, true)), firstLeadingBit(global3.b.b.xy << ((vec2<u32>(global3.d.e, arg_2.x) << (vec2<u32>(1418u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<u32>(~(~global4[_wgslsmith_index_u32(global3.d.e, 28u)]), max(global0.e.e, u_input.b) ^ 0u), global3.b, global0.d.a.x >> (reverseBits(_wgslsmith_clamp_u32(24204u, 20057u, 0u)) % 32u)), Struct_2(min((arg_2 ^ global3.e.c) | select(global0.d.c, vec2<u32>(global4[_wgslsmith_index_u32(0u, 28u)], 18475u), vec2<bool>(false, true)), select(arg_2, vec2<u32>(1u, global3.d.a.x), vec2<bool>(true, arg_0)) >> (min(global0.d.c, global0.d.c) % vec2<u32>(32u))), -select(global3.e.b, vec2<i32>(arg_1, -47991i), vec2<bool>(true, arg_0)) << (global0.e.a % vec2<u32>(32u)), vec2<u32>(~countOneBits(15560u), arg_2.x), Struct_1(495f, select(global0.c.b, _wgslsmith_div_vec4_i32(vec4<i32>(arg_1, -2147483647i, 1i, u_input.c), global0.e.d.b), vec4<bool>(true, true, false, false))), 69411u));
    let var_0 = Struct_1(-433f, _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(global3.b.b, global0.e.d.b), global0.d.d.b));
    let var_1 = Struct_4(~23542i);
    global3 = Struct_3(var_0.b.wz, Struct_1(402f, _wgslsmith_div_vec4_i32(~(-global3.c.b), abs(var_0.b))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-293f, _wgslsmith_f_op_f32(688f + var_0.a)))), _wgslsmith_mod_vec4_i32(var_0.b, global3.e.d.b)), global0.e, Struct_2(vec2<u32>(abs(_wgslsmith_dot_vec2_u32(global3.e.a, vec2<u32>(u_input.a, global4[_wgslsmith_index_u32(19390u, 28u)]))), countOneBits(~u_input.a)), vec2<i32>(u_input.c, _wgslsmith_dot_vec4_i32(var_0.b, var_0.b)) >> (arg_2 % vec2<u32>(32u)), global3.d.a, Struct_1(-1106f, -var_0.b), abs(55971u)));
    var var_2 = Struct_3(-select(abs(~vec2<i32>(-2147483647i, -2147483647i)), ~(~global0.a), vec2<bool>(arg_0, true)), Struct_1(-1273f, ~(~(~vec4<i32>(u_input.c, -26690i, 1i, -46612i)))), var_0, Struct_2(~_wgslsmith_add_vec2_u32(abs(vec2<u32>(arg_2.x, 2905u)), ~vec2<u32>(4294967295u, global3.d.e)), abs(global3.a), ~_wgslsmith_sub_vec2_u32(arg_2, vec2<u32>(41424u, u_input.b) << (global3.d.c % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -2454f) + _wgslsmith_f_op_f32(step(-1302f, global0.e.d.a))), select(vec4<i32>(-1i, global3.e.b.x, var_1.a, 0i), reverseBits(var_0.b), true)), _wgslsmith_mult_u32(u_input.b, global3.d.a.x)), global0.e);
    return vec2<u32>(max(global0.e.c.x, var_2.d.c.x), arg_2.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = global0.e.d;
    let var_1 = _wgslsmith_mod_u32(global0.d.c.x, firstLeadingBit(global4[_wgslsmith_index_u32(~(~24249u), 28u)])) & func_2(any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true), true)), 0i, vec2<u32>(_wgslsmith_mult_u32(~global3.e.e, ~28907u), _wgslsmith_div_u32(global0.d.c.x ^ u_input.b, 69404u))).x;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x * var_0.a), _wgslsmith_div_f32(-1078f, var_0.a), var_0.a, _wgslsmith_f_op_f32(round(-173f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-302f, -153f, -222f, global1.x), vec4<f32>(var_0.a, var_0.a, 225f, -1533f), vec4<bool>(true, true, false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(928f, 1000f, 1221f, -1126f) + vec4<f32>(-1389f, global0.e.d.a, -1407f, var_0.a)))))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-179f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1410f, var_0.a)))), _wgslsmith_f_op_f32(-692f + _wgslsmith_f_op_f32(step(946f, global1.x))), _wgslsmith_f_op_f32(ceil(global3.b.a))))));
    var var_2 = 1u;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a - global1.x), var_0.a)))), global1.x);
    return Struct_3(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, arg_3.x), arg_3.x), global3.b, global0.e.d, global3.d, global0.e);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = ~(~_wgslsmith_mod_vec2_u32(reverseBits(global3.d.a), arg_0.zx) ^ global3.d.c);
    var var_1 = func_4(func_2(true, -arg_1.d.b.x, vec2<u32>(_wgslsmith_div_u32(0u, 42083u), reverseBits(arg_0.x))), arg_3.b.xwz, Struct_4(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(arg_3.b.x, arg_3.b.x, 9292i)), vec3<i32>(arg_3.b.x, global3.e.b.x, -2147483647i) ^ vec3<i32>(-1i, 25523i, -30419i))), _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -global0.d.b.x, ~max(22497i, 2147483647i), -1i, arg_3.b.x), ~(~(vec4<i32>(-3141i, global3.b.b.x, global0.b.b.x, -2147483647i) << (vec4<u32>(4728u, 4294967295u, global4[_wgslsmith_index_u32(54460u, 28u)], 1u) % vec4<u32>(32u))))));
    let var_2 = _wgslsmith_div_vec2_i32(arg_3.b.yy, vec2<i32>(50721i, global0.c.b.x));
    return 45397u;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 28>();
    global2 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~((u_input.a >> (global3.d.e % 32u)) << (1u % 32u)), 54735u, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(74428u, 28u)], u_input.b)), _wgslsmith_sub_u32(abs(func_1(~vec3<u32>(10159u, 27475u, global0.e.c.x), Struct_2(global0.e.c, global0.c.b.zz, vec2<u32>(53334u, 1u), Struct_1(global1.x, vec4<i32>(global3.d.b.x, 29931i, -2147483647i, global0.e.d.b.x)), u_input.a), vec4<bool>(true, true, true, true), global0.e.d)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, global0.e.a.x), min(0u, global0.d.e) << (_wgslsmith_mod_u32(0u, global0.e.e) % 32u))));
    var var_0 = global1.x;
    var var_1 = Struct_4(u_input.c);
    var var_2 = Struct_3(abs(abs(global0.a)), func_4(_wgslsmith_add_vec2_u32(abs(~vec2<u32>(1u, 3707u)), global3.d.c), select(vec3<i32>(-2147483647i, 0i, global0.d.d.b.x) >> (vec3<u32>(7604u, global4[_wgslsmith_index_u32(0u, 28u)], u_input.a) % vec3<u32>(32u)), firstLeadingBit(global0.c.b.ywz), true) >> (firstTrailingBit(vec3<u32>(global0.d.a.x, global4[_wgslsmith_index_u32(0u, 28u)], 4294967295u) | vec3<u32>(1u, global4[_wgslsmith_index_u32(1u, 28u)], global0.e.e)) % vec3<u32>(32u)), Struct_4(var_1.a | var_1.a), global3.d.d.b).b, global0.b, Struct_2(select(firstTrailingBit(vec2<u32>(1u, u_input.b)), global3.e.c, true) ^ (func_2(true, 76202i, global3.e.a) << (abs(vec2<u32>(global0.e.e, 1u)) % vec2<u32>(32u))), ~(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, -2147483647i))), countOneBits(vec2<u32>(global3.d.a.x, global0.e.a.x) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(7443u, global4[_wgslsmith_index_u32(1u, 28u)]), vec2<u32>(3767u, 29411u)) % vec2<u32>(32u))), global3.c, _wgslsmith_dot_vec3_u32(vec3<u32>(~global4[_wgslsmith_index_u32(116481u, 28u)], firstTrailingBit(1u), 31300u), vec3<u32>(0u, global4[_wgslsmith_index_u32(global3.d.a.x ^ u_input.a, 28u)], 1u))), func_4(_wgslsmith_div_vec2_u32(vec2<u32>(global3.d.e, 6622u), min(~global0.e.c, global0.e.a)), global0.b.b.xxz, Struct_4(var_1.a), _wgslsmith_clamp_vec4_i32(max(~global0.d.d.b, firstLeadingBit(vec4<i32>(u_input.c, -1i, 0i, -1i))), vec4<i32>(var_1.a ^ var_1.a, abs(var_1.a), 1i, _wgslsmith_dot_vec2_i32(global3.d.d.b.yx, global3.d.d.b.wy)), ~global3.c.b | global3.c.b)).e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f));
}

