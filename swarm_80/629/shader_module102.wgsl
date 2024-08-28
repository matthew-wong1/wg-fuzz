struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(16982i, 1i, 1i);

var<private> global1: Struct_3 = Struct_3(vec4<f32>(684f, -447f, -1000f, -1000f), Struct_2(-18608i, Struct_1(vec4<bool>(true, true, true, true), 28088u, vec2<bool>(false, false), vec4<u32>(100469u, 8085u, 33654u, 20082u), 72595u), false, vec3<f32>(-785f, 1101f, -1103f), 529f), vec3<f32>(-342f, 733f, -177f));

var<private> global2: array<Struct_2, 2>;

var<private> global3: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2102f), _wgslsmith_f_op_f32(-global1.b.e), -680f))), vec3<f32>(global1.b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), -896f)) - global1.a.ywx);
    global2 = array<Struct_2, 2>();
    var var_1 = vec2<u32>(firstTrailingBit(~u_input.c), ~49923u);
    global2 = array<Struct_2, 2>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(global1.b.d.x + global1.b.e), global1.a.x, _wgslsmith_div_f32(-1517f, var_0.x)) + _wgslsmith_f_op_vec4_f32(global1.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1000f, -1000f, var_0.x) * vec4<f32>(552f, var_0.x, -944f, global1.c.x)))))), Struct_2(countOneBits(global0.x), global1.b.b, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-616f, global1.a.x, -1404f) - vec3<f32>(var_0.x, global1.b.e, global1.c.x)), _wgslsmith_f_op_vec3_f32(min(global1.b.d, global1.a.xwx)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.e))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(1566f, _wgslsmith_f_op_f32(f32(-1f) * -242f))), -408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(546f - 1248f) * var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -1064f)), global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    return 1000f;
}

fn func_2() -> u32 {
    let var_0 = 83379u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var var_2 = Struct_3(global1.a, Struct_2(global0.x, Struct_1(vec4<bool>(global1.b.c & false, !global1.b.b.a.x, any(global1.b.b.a), select(global1.b.c, global1.b.c, true)), ~(0u << (1u % 32u)), select(global1.b.b.a.wy, select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(global1.b.b.c, global1.b.b.a.yy, global1.b.b.a.x)), global1.b.b.d, 1u), !(!global1.b.c || true), _wgslsmith_div_vec3_f32(vec3<f32>(405f, _wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2477f, var_1, global1.c.x), vec3<f32>(-922f, 723f, var_1), global1.b.c))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1163f - -2307f), _wgslsmith_f_op_f32(var_1 - 943f), global1.b.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - global1.c.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(round(-1000f)))));
    let var_3 = Struct_4(18146i, global1.b.b.d, u_input.b);
    let var_4 = var_3;
    return ~firstTrailingBit(var_3.b.x);
}

fn func_1() -> vec2<bool> {
    global3 = func_2() << (~(~_wgslsmith_add_u32(~u_input.c, ~u_input.a)) % 32u);
    let var_0 = Struct_2(max(~(u_input.b.x | ~u_input.b.x), _wgslsmith_add_i32(0i, 0i)), global1.b.b, !any(!vec4<bool>(false, true, false, global1.b.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(global1.b.d.x, global1.c.x), _wgslsmith_div_f32(-1684f, global1.a.x), -198f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global1.b.d, global1.c), _wgslsmith_f_op_vec3_f32(select(global1.b.d, vec3<f32>(global1.a.x, global1.a.x, global1.c.x), global1.b.c))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-545f, global1.a.x, !any(global1.b.b.a))))));
    let var_1 = vec2<f32>(513f, global1.a.x);
    var var_2 = vec4<u32>(1u, 4294967295u, ~(~_wgslsmith_mod_u32(func_2(), 0u << (1u % 32u))), global1.b.b.b);
    global0 = vec3<i32>(-2147483647i & var_0.a, global1.b.a, -17329i);
    return var_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~max(~firstTrailingBit(~global0.x), u_input.d);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.b.b.d.x, 11210u), 2u)];
    var var_3 = !var_2.b.a.yxx;
    let var_4 = global1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(~max(countOneBits(global1.b.b.d.zz), vec2<u32>(u_input.a, 61603u)), var_2.b.d.yz));
}

