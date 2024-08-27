struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(55539u, 0u, 37741u));

var<private> global2: array<u32, 29>;

var<private> global3: Struct_2;

var<private> global4: f32 = 195f;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global1 = global3.a;
    var var_0 = !(!(!global3.c.x));
    global0 = 349f;
    let var_1 = max(vec2<u32>(global3.d.a.x, _wgslsmith_mult_u32(max(arg_1, u_input.a), 9096u) >> (0u % 32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(20134u, 0u), u_input.c.xy));
    global1 = global3.a;
    return arg_2;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>) -> vec3<bool> {
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global3.e.x)), _wgslsmith_f_op_f32(ceil(global3.e.x)));
    global0 = _wgslsmith_f_op_f32(max(global3.e.x, 424f));
    global2 = array<u32, 29>();
    global1 = Struct_1(vec3<u32>(1u, select(~global3.d.a.x, _wgslsmith_sub_u32(39822u, u_input.c.x), true) & reverseBits(_wgslsmith_sub_u32(40711u, 29420u)), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~arg_0.x, ~4294967295u), 29u)]));
    global1 = Struct_1(_wgslsmith_sub_vec3_u32(min(reverseBits(_wgslsmith_div_vec3_u32(global3.d.a, u_input.e)), _wgslsmith_div_vec3_u32(~global3.d.a, vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], 11706u, 26116u))), vec3<u32>(max(~u_input.d.x, 1u), _wgslsmith_sub_u32(arg_0.x, u_input.d.x), arg_0.x)));
    return vec3<bool>(any(global3.c), true, any(vec3<bool>(false, any(global3.c.xy), false)));
}

fn func_1() -> Struct_1 {
    global2 = array<u32, 29>();
    var var_0 = global3.d.a.x;
    global2 = array<u32, 29>();
    let var_1 = Struct_2(func_2(global3.c.x, global1.a.x, Struct_1((vec3<u32>(4294967295u, u_input.c.x, 4294967295u) ^ u_input.e) & vec3<u32>(global2[_wgslsmith_index_u32(global3.a.a.x, 29u)], u_input.a, global3.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.e.x * 2295f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global3.e.x, global3.e.x)), -1000f))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.e.x), global3.e.x)), !select(func_3(~vec2<u32>(u_input.e.x, 26748u), -vec4<i32>(-22151i, u_input.b.x, 0i, -2147483647i)), select(global3.c, global3.c, vec3<bool>(global3.c.x, global3.b, true)), vec3<bool>(true, !global3.c.x, true)), global3.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.e) + global3.e));
    global0 = _wgslsmith_f_op_f32(trunc(global3.e.x));
    return global3.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(true && select(global3.b, global3.c.x, select(global3.b, true, global3.b))), global3.c.x, !(u_input.b.x > _wgslsmith_div_i32(u_input.b.x, abs(15475i))));
    var var_1 = Struct_2(func_1(), !any(!select(vec4<bool>(false, true, global3.c.x, var_0.x), vec4<bool>(false, global3.b, var_0.x, global3.c.x), true)), select(global3.c, vec3<bool>(firstLeadingBit(u_input.b.x) < _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), false, all(vec4<bool>(false, false, var_0.x, true))), global3.c), global3.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.e.x, global3.e.x) - -948f), _wgslsmith_div_f32(-1000f, -1222f), _wgslsmith_f_op_f32(global3.e.x - -1393f))));
    global2 = array<u32, 29>();
    global3 = Struct_2(Struct_1(vec3<u32>(u_input.d.x | var_1.d.a.x, reverseBits(var_1.d.a.x), _wgslsmith_div_u32(u_input.e.x, var_1.a.a.x)) >> (global1.a % vec3<u32>(32u))), var_0.x, global3.c, func_2(true, global3.d.a.x, func_1()), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(658f, _wgslsmith_f_op_f32(-global3.e.x), _wgslsmith_f_op_f32(step(global3.e.x, 325f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1058f, 412f, -175f), var_1.e)) * _wgslsmith_div_vec3_f32(vec3<f32>(-140f, -453f, -1000f), var_1.e))));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-380f - _wgslsmith_f_op_f32(var_1.e.x - global3.e.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-160f)), _wgslsmith_f_op_f32(f32(-1f) * -786f))), var_1.e.x)));
    var var_2 = select(reverseBits(~global3.a.a.xz & ~global3.a.a.yx) << (func_1().a.yz % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.d.yz | (vec2<u32>(1u, 0u) >> (vec2<u32>(var_1.d.a.x, u_input.e.x) % vec2<u32>(32u))), ~(~vec2<u32>(global3.d.a.x, u_input.e.x)), vec2<u32>(~89499u, 1u & global1.a.x)), ~vec2<u32>(abs(4294967295u), global1.a.x), vec2<u32>(global3.a.a.x, ~31916u)), _wgslsmith_add_i32(-2147483647i, u_input.b.x) != (-u_input.b.x | u_input.b.x));
    var var_3 = vec2<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), ~_wgslsmith_sub_i32(~2003i, u_input.b.x));
    let var_4 = vec3<f32>(-2031f, var_1.e.x, 524f);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, _wgslsmith_f_op_f32(998f + global3.e.x));
}

