struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
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

var<private> global0: array<vec4<bool>, 19>;

var<private> global1: array<f32, 12>;

var<private> global2: vec3<i32>;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>) -> vec2<f32> {
    var var_0 = global3.b;
    var_0 = !(!global3.c);
    let var_1 = Struct_1(_wgslsmith_div_vec3_u32(u_input.d.yxy, global3.a), select(select(vec2<bool>(global3.b.x, var_0.x), !select(vec2<bool>(false, global3.b.x), global3.b, global3.c), vec2<bool>(true, global3.c.x)), global3.b, select(vec2<bool>(var_0.x, !var_0.x), global3.c, global3.c)), global3.c);
    global0 = array<vec4<bool>, 19>();
    let var_2 = var_1;
    return arg_0;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(firstTrailingBit(~(-1i)), -3834i);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 12u)], 1732f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(-874f, -643f)))))) * vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1397f), -1475f)), _wgslsmith_f_op_f32(floor(-187f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(20555u, 12u)])), vec2<f32>(1009f, _wgslsmith_f_op_f32(578f - 770f)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(89080u, 12u)], -642f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(43918u, 12u)], -334f))))))));
    let var_2 = _wgslsmith_f_op_f32(var_1.x * -1000f);
    global1 = array<f32, 12>();
    global0 = array<vec4<bool>, 19>();
    return Struct_1(firstTrailingBit(~global3.a), !(!select(global3.c, global3.b, !global3.c)), !select(!global3.b, select(vec2<bool>(global3.c.x, global3.b.x), global3.c, global3.b.x), global3.b));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: i32) -> Struct_1 {
    return Struct_1(u_input.d.xwx, !select(func_2().c, !arg_0.c, true), select(func_2().b, global3.c, !(global3.c.x && arg_0.c.x) || global3.c.x));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global2 = -u_input.c.wxz | u_input.c.wxz;
    let var_0 = func_4(func_2(), u_input.c << (~select(~vec4<u32>(u_input.e, u_input.d.x, 27317u, global3.a.x), _wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(4294967295u, 27811u, u_input.d.x, 77600u), vec4<u32>(u_input.d.x, 32951u, global3.a.x, 4294967295u)), all(global3.b)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(27381u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]))))))), countOneBits(2147483647i));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 1u, global3.a.x), func_2().a), 12u)]), Struct_1(vec3<u32>(u_input.a, 0u, ~4294967295u & func_4(Struct_1(u_input.d.yxy, var_0.c, vec2<bool>(arg_0, arg_0)), vec4<i32>(global2.x, -891i, -1i, -2147483647i), 372f, u_input.c.x).a.x), !(!(!vec2<bool>(true, global3.c.x))), func_4(var_0, -countOneBits(u_input.c), -818f, 1i).b));
    let var_2 = Struct_1(vec3<u32>(54798u, var_1.b.a.x >> (~9086u % 32u), ~1u), select(select(vec2<bool>(func_4(var_1.b, u_input.c, -735f, global2.x).c.x, !global3.c.x), !var_0.b, !var_0.c.x), !(!select(vec2<bool>(false, false), var_1.b.c, false)), func_4(var_0, u_input.c, global1[_wgslsmith_index_u32(var_1.b.a.x, 12u)], u_input.c.x).b.x), var_0.b);
    var var_3 = false;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), Struct_1(vec3<u32>(_wgslsmith_sub_u32(var_0.a.x, 4294967295u), ~12011u, var_0.a.x), !(!var_0.b), !func_4(func_2(), ~u_input.c, global1[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_dot_vec3_i32(u_input.c.zwz, u_input.c.xxw)).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global3.a.x < ~reverseBits(~1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.a)), global1[_wgslsmith_index_u32(~var_0.b.a.x, 12u)])))))).x;
    global3 = func_2();
    let var_2 = var_0.b.c;
    global3 = Struct_1(countOneBits(_wgslsmith_mult_vec3_u32(~(vec3<u32>(global3.a.x, 4294967295u, u_input.b) ^ vec3<u32>(16796u, 38812u, 48904u)), countOneBits(vec3<u32>(15792u, 21624u, 13249u)) >> (var_0.b.a % vec3<u32>(32u)))), global3.b, vec2<bool>(true, func_1(false).b.c.x));
    var_1 = _wgslsmith_f_op_f32(step(var_0.a, 1478f));
    let x = u_input.a;
    s_output = StorageBuffer(-813f);
}

