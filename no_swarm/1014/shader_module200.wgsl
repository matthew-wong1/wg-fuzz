struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(11940u, 23123u, 1u);

var<private> global1: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(-14767i, Struct_2(false, true)), Struct_4(12820i, Struct_2(false, false)), Struct_4(-42567i, Struct_2(false, true)), Struct_4(6330i, Struct_2(false, false)), Struct_4(1i, Struct_2(true, true)), Struct_4(-24285i, Struct_2(true, false)), Struct_4(1i, Struct_2(true, false)), Struct_4(-12966i, Struct_2(true, true)), Struct_4(0i, Struct_2(true, true)), Struct_4(-1i, Struct_2(true, false)), Struct_4(40441i, Struct_2(false, true)), Struct_4(0i, Struct_2(true, false)), Struct_4(-56629i, Struct_2(true, true)), Struct_4(9218i, Struct_2(true, false)), Struct_4(-21147i, Struct_2(false, true)), Struct_4(-37248i, Struct_2(false, true)), Struct_4(2147483647i, Struct_2(true, false)), Struct_4(0i, Struct_2(false, false)), Struct_4(41953i, Struct_2(true, false)), Struct_4(32410i, Struct_2(true, true)), Struct_4(-6111i, Struct_2(false, true)), Struct_4(-18911i, Struct_2(true, true)));

var<private> global2: array<f32, 31>;

var<private> global3: Struct_5 = Struct_5(Struct_1(vec3<i32>(i32(-2147483648), -19607i, 62276i), vec4<f32>(-780f, -1000f, -109f, -796f), true), 0u, Struct_1(vec3<i32>(2147483647i, 20122i, i32(-2147483648)), vec4<f32>(-327f, 565f, 1935f, -1336f), true));

var<private> global4: array<Struct_4, 24>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2) -> i32 {
    global2 = array<f32, 31>();
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(~(~vec3<i32>(u_input.a.x, global3.c.a.x, -1i)), vec3<i32>(global3.c.a.x, _wgslsmith_dot_vec3_i32(global3.c.a, vec3<i32>(global3.c.a.x, global3.c.a.x, 2147483647i)) >> (32826u % 32u), ~1i)), global3.c.b, true);
    global4 = array<Struct_4, 24>();
    return _wgslsmith_dot_vec2_i32(~global3.a.a.yx >> (~vec2<u32>(reverseBits(0u), 31307u) % vec2<u32>(32u)), -(_wgslsmith_mult_vec2_i32(abs(var_0.a.zz), u_input.a) | abs(-vec2<i32>(-12981i, arg_1))));
}

fn func_3(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(global3.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global3.c.b.x), global3.c.b.x, global2[_wgslsmith_index_u32(~0u, 31u)]) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1858f, -1696f, global2[_wgslsmith_index_u32(global0.x, 31u)], -1052f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-949f, global2[_wgslsmith_index_u32(21003u, 31u)], global2[_wgslsmith_index_u32(arg_0.d, 31u)], arg_0.b) - global3.a.b), vec4<bool>(true, false, global3.a.c, global3.c.c))))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(31452i, arg_0.a.x), arg_0.a | arg_0.a) > abs(1i));
    var var_1 = Struct_5(Struct_1(-vec3<i32>(max(2147483647i, arg_0.a.x), reverseBits(-16368i), 0i), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b * -1355f))), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(4294967295u, 31u)])), _wgslsmith_f_op_f32(max(1155f, _wgslsmith_f_op_f32(sign(787f)))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(global0.x), ~global0.x), 31u)]), !(!var_0.c || (var_0.c | var_0.c))), _wgslsmith_mod_u32(~(~global3.b), 1u), Struct_1(vec3<i32>(min(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(-21559i, u_input.a.x)), u_input.a.x), u_input.a.x, 1i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1364f)) - -713f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1423f * global2[_wgslsmith_index_u32(0u, 31u)])), global3.c.b.x, 740f), !(!(true | global3.c.c))));
    global2 = array<f32, 31>();
    var var_2 = Struct_2(all(select(select(select(vec2<bool>(var_1.a.c, false), vec2<bool>(var_0.c, false), vec2<bool>(true, true)), !vec2<bool>(var_1.a.c, false), var_1.a.c), !(!vec2<bool>(var_0.c, true)), select(vec2<bool>(true, true), vec2<bool>(var_1.c.c, var_1.a.c), all(vec3<bool>(false, true, false))))), true);
    var var_3 = Struct_5(var_1.a, _wgslsmith_sub_u32(arg_0.c, ~abs(arg_0.d)) << (~(~_wgslsmith_dot_vec2_u32(global0.yy, global0.xx)) % 32u), Struct_1(-vec3<i32>(var_1.c.a.x >> (72261u % 32u), 4686i ^ u_input.a.x, var_0.a.x), global3.a.b, any(vec3<bool>(global0.x < 34942u, var_2.b & true, any(vec4<bool>(var_2.b, false, global3.a.c, true))))));
    return global3.c;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: u32) -> vec4<u32> {
    global4 = array<Struct_4, 24>();
    global4 = array<Struct_4, 24>();
    let var_0 = arg_0.a.x;
    let var_1 = func_3(Struct_3(vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(2569i, func_2(arg_0.b.yz, arg_0.a.x, Struct_2(false, true)))), arg_0.b.x, arg_1, arg_1));
    global3 = Struct_5(func_3(Struct_3(vec2<i32>(arg_0.a.x, ~u_input.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(510f, global2[_wgslsmith_index_u32(arg_1, 31u)], var_1.c)), _wgslsmith_f_op_f32(trunc(-1000f)), !global3.c.c)), _wgslsmith_sub_u32(~global0.x, 0u), _wgslsmith_sub_u32(global0.x, 4294967295u) & 4294967295u)), _wgslsmith_mult_u32(global3.b, max(~arg_3 << (~0u % 32u), 41817u)), Struct_1(min(var_1.a, countOneBits(global3.c.a | global3.a.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1080f)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-global3.c.b.x), _wgslsmith_div_f32(arg_2, 1593f))), !(!var_1.c)));
    return vec4<u32>(15492u ^ ((arg_1 >> (_wgslsmith_mod_u32(4294967295u, 14411u) % 32u)) | _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1, 5494u, 96866u, 1u)), abs(vec4<u32>(arg_3, 1u, global3.b, global3.b)))), 44321u, _wgslsmith_dot_vec2_u32(~global0.xy, global0.xz), arg_1);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, u_input.a.x, 8608i), _wgslsmith_div_vec3_i32(global3.c.a, vec3<i32>(18241i, 13583i, -26648i))), vec3<i32>(global3.c.a.x, -38062i, ~min(1i, u_input.a.x))), global3.c.a);
    var var_1 = Struct_5(global3.a, reverseBits(global3.b), Struct_1(vec3<i32>(1i, u_input.a.x, firstLeadingBit(1i)), global3.c.b, true));
    let var_2 = Struct_2(true, var_1.c.c);
    var var_3 = var_1.c;
    var var_4 = false;
    return var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(i32(-1i) * -13313i, 1i, global3.a.a.x);
    var var_1 = _wgslsmith_div_f32(-126f, _wgslsmith_f_op_f32(-335f * global3.a.b.x));
    var var_2 = Struct_4(-func_4(firstTrailingBit(vec4<u32>(57912u, global0.x, 17457u, global0.x)) & func_1(global3.c, global0.x, global2[_wgslsmith_index_u32(global0.x, 31u)], global3.b), global3.c.b.wyx), Struct_2(false, true));
    var var_3 = global3.c;
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(977f, global3.c.b.x, true))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -658f))))), var_3.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-356f)) * var_3.b.x), global2[_wgslsmith_index_u32(77547u, 31u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global3.a.b.xy)))), ~515i);
}

