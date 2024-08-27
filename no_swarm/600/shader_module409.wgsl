struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec4<u32>(45487u, 21662u, 1u, 0u), vec2<bool>(true, false), vec3<i32>(1i, i32(-2147483648), -41128i)), vec2<bool>(true, false), Struct_1(vec4<u32>(88012u, 1u, 44523u, 4294967295u), vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -1i, 41166i)), 786f);

var<private> global2: array<Struct_5, 20>;

var<private> global3: array<bool, 6> = array<bool, 6>(true, true, true, true, true, false);

var<private> global4: array<Struct_2, 26>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_1(~select(vec4<u32>(4294967295u, 52098u, _wgslsmith_dot_vec4_u32(global1.c.a, arg_0.a.a), ~global0.a.x), u_input.b, vec4<bool>(true, all(vec3<bool>(true, global1.c.b.x, arg_0.a.b.x)), all(vec2<bool>(global1.a.b.x, false)), false)), select(vec2<bool>(true, !any(vec3<bool>(true, global3[_wgslsmith_index_u32(global1.a.a.x, 6u)], global1.b.x))), vec2<bool>(global3[_wgslsmith_index_u32(~1u, 6u)], global0.b.x), global1.c.b.x), ~vec3<i32>(1i, u_input.a.x, abs(firstTrailingBit(1i))));
    global0 = Struct_1(u_input.b, arg_0.a.b, ~(~vec3<i32>(global0.c.x, 7415i & global0.c.x, -34035i & var_0.c.x)));
    global2 = array<Struct_5, 20>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~global0.a.www & ~global1.c.a.wxx, select(vec3<u32>(u_input.b.x, u_input.b.x, var_0.a.x), firstLeadingBit(global1.a.a.wwy), vec3<bool>(false, true, true)) | abs(max(vec3<u32>(0u, u_input.b.x, 56685u), vec3<u32>(4294967295u, u_input.b.x, 4294967295u)))), u_input.b.x ^ (arg_0.a.a.x ^ _wgslsmith_add_u32(17033u, 85375u))), 20u)];
    let var_2 = Struct_4(15384u & var_0.a.x);
    return -999f;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2139f, arg_2)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global1.d)))) - 872f))));
    var_0 = _wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(global0.a.x, 26u)]));
    global0 = arg_1.a;
    let var_1 = _wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, arg_0.a, ~u_input.b.x & arg_0.a, global0.a.x)), global0.a);
    var var_2 = Struct_3(Struct_1(~(~(~u_input.b)), !arg_1.a.b, vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 4530i) ^ -1i, ~min(u_input.a.x, global1.a.c.x), 53022i)), vec2<bool>(arg_1.a.b.x, !(_wgslsmith_dot_vec3_i32(global0.c, vec3<i32>(global1.a.c.x, global1.c.c.x, arg_1.a.c.x)) <= -18749i)), Struct_1(abs(vec4<u32>(0u, arg_0.a, arg_0.a, arg_0.a) >> (var_1 % vec4<u32>(32u))), !vec2<bool>(select(true, global0.b.x, global0.b.x), select(false, global0.b.x, global3[_wgslsmith_index_u32(49601u, 6u)])), firstTrailingBit(~vec3<i32>(54670i, 2147483647i, -2147483647i)) ^ global1.c.c), -190f);
    return select(any(select(vec2<bool>(global0.b.x, all(vec3<bool>(false, arg_1.a.b.x, true))), select(!global1.b, vec2<bool>(global0.b.x, global0.b.x), vec2<bool>(global1.a.b.x, true)), vec2<bool>(global1.a.b.x, true))), true, !all(vec3<bool>(true, global1.a.a.x == var_1.x, false)));
}

fn func_1() -> u32 {
    let var_0 = ~(~(global0.c << (vec3<u32>(_wgslsmith_clamp_u32(0u, global1.c.a.x, 4294967295u), global0.a.x | 63529u, global1.c.a.x & 47375u) % vec3<u32>(32u))));
    let var_1 = global0.a.xy;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.d, 1727f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-950f)))))) - 924f);
    var var_3 = Struct_3(Struct_1(select(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 0u, global1.a.a.x), global1.c.a)), abs(_wgslsmith_add_vec4_u32(global1.c.a, global1.a.a)), global0.b.x), vec2<bool>(func_2(Struct_4(global0.a.x), Struct_2(Struct_1(vec4<u32>(global1.a.a.x, global0.a.x, 1u, global0.a.x), global0.b, vec3<i32>(0i, var_0.x, 0i))), -1017f), select(false, any(vec3<bool>(true, true, true)), true)), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 1i, -2147483647i)), global0.b, Struct_1(u_input.b, select(!(!vec2<bool>(global0.b.x, false)), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 6u)], false)), !global0.b.x)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(global0.c.x, -2147483647i, 30617i)), select(-vec3<i32>(2147483647i, global0.c.x, global0.c.x), abs(vec3<i32>(global1.a.c.x, global0.c.x, var_0.x)), all(vec2<bool>(global1.c.b.x, global3[_wgslsmith_index_u32(global0.a.x, 6u)]))))), -335f);
    global0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(~global0.a.zwz, var_3.a.a.zzy), _wgslsmith_add_u32(reverseBits(1u), ~global1.a.a.x), ~4294967295u, 1u), max(vec4<u32>(_wgslsmith_dot_vec2_u32(global0.a.xw, global1.a.a.zy), _wgslsmith_div_u32(1u, var_1.x), u_input.b.x << (u_input.b.x % 32u), global0.a.x), global1.a.a)), vec2<bool>(false, max(_wgslsmith_dot_vec4_i32(vec4<i32>(2746i, -284i, 2147483647i, global0.c.x), vec4<i32>(-1i, var_0.x, -1757i, global1.a.c.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x, var_0.x, 29229i), u_input.a.yww)) < -1i), vec3<i32>(_wgslsmith_add_i32(-min(var_3.c.c.x, -58116i), 0i), _wgslsmith_add_i32(global0.c.x, abs(_wgslsmith_div_i32(0i, var_0.x))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(abs(-1i), 1i), min(var_3.a.c.x, -2147483647i) & ~45666i)));
    return global1.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-1i);
    let var_1 = !vec3<bool>(!(global0.a.x <= global1.c.a.x) || global3[_wgslsmith_index_u32(~(0u ^ global1.c.a.x), 6u)], true | (!global3[_wgslsmith_index_u32(global1.c.a.x, 6u)] || (1000f <= global1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.d))) == global1.d);
    let var_2 = u_input.a.x;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)), -1044f, _wgslsmith_f_op_f32(global1.d - 273f));
    global4 = array<Struct_2, 26>();
    global4 = array<Struct_2, 26>();
    let var_4 = _wgslsmith_sub_i32(-var_2, 75103i);
    var var_5 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1185f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))), var_3.x)), var_3.yzw));
    let var_6 = Struct_3(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 48546u, func_1()) >> (global1.c.a % vec4<u32>(32u)), vec2<bool>(var_1.x, any(vec4<bool>(false, global3[_wgslsmith_index_u32(8358u, 6u)], false, true))), _wgslsmith_clamp_vec3_i32(u_input.a.ywy, select(vec3<i32>(var_2, var_4, 2147483647i) | vec3<i32>(global1.a.c.x, var_4, -5124i), _wgslsmith_add_vec3_i32(u_input.a.xyx, u_input.a.wwx), vec3<bool>(true, global1.c.b.x, true)), abs(vec3<i32>(u_input.a.x, u_input.a.x, 1i)))), !vec2<bool>(!(var_1.x && var_1.x), global0.b.x), Struct_1(~abs(vec4<u32>(67015u, 34855u, 4519u, global1.c.a.x)), global0.b, u_input.a.zyw | select(vec3<i32>(-2147483647i, 2147483647i, 8033i), vec3<i32>(0i, var_2, var_4) ^ global1.c.c, vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_6.d)))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

