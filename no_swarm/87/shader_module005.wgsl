struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(-2558f, 259f), vec2<f32>(-2554f, -3112f), vec2<f32>(532f, -2033f), vec2<f32>(1175f, -819f), vec2<f32>(-2230f, 1299f), vec2<f32>(167f, -1676f), vec2<f32>(585f, -1058f), vec2<f32>(-882f, 1000f), vec2<f32>(548f, 671f), vec2<f32>(1936f, 210f), vec2<f32>(-1023f, -288f), vec2<f32>(-850f, 2639f), vec2<f32>(-787f, -1330f), vec2<f32>(-1282f, -1000f), vec2<f32>(-618f, 556f), vec2<f32>(216f, -2273f), vec2<f32>(178f, 1045f), vec2<f32>(-726f, -2562f), vec2<f32>(-1158f, 700f), vec2<f32>(1249f, 475f), vec2<f32>(1558f, 562f), vec2<f32>(1002f, 224f), vec2<f32>(1000f, 1334f), vec2<f32>(656f, 769f), vec2<f32>(801f, -520f));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: Struct_2;

var<private> global3: bool = false;

var<private> global4: array<i32, 8> = array<i32, 8>(21193i, -11657i, 1i, 29046i, -52178i, i32(-2147483648), -1i, -7435i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec3<i32> {
    let var_0 = global2.c;
    let var_1 = u_input.a;
    var var_2 = vec4<f32>(413f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(-408f, _wgslsmith_f_op_f32(f32(-1f) * -750f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1267f)), 955f);
    global0 = array<vec2<f32>, 25>();
    var var_3 = global2.c;
    return u_input.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> Struct_1 {
    global1 = global2.b.yy;
    let var_0 = func_3(global2.c.b, _wgslsmith_clamp_i32(u_input.a.x, ~(~firstTrailingBit(u_input.a.x)), i32(-1i) * -2147483647i));
    return global2.c;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<bool> {
    global2 = Struct_2(true, !select(select(select(vec3<bool>(false, false, global1.x), vec3<bool>(false, true, global1.x), global1.x), global2.b, true), vec3<bool>(false, true, global2.b.x || global1.x), !global2.b), func_2(!global2.b, vec2<i32>(_wgslsmith_sub_i32(1i, 1i), arg_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(86681u, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)]), global0[_wgslsmith_index_u32(~arg_0.b, 25u)])))));
    global0 = array<vec2<f32>, 25>();
    var var_0 = ~4294967295u;
    global1 = vec2<bool>(arg_0.a, all(global2.b.zx));
    global2 = Struct_2(arg_0.a, vec3<bool>(!(arg_0.a | false) && true, global2.c.b == arg_0.b, !(_wgslsmith_f_op_f32(step(-2624f, 283f)) > _wgslsmith_f_op_f32(1638f - -1196f))), Struct_1(-65631i > -arg_0.c.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(~43856u, ~arg_0.b), min(arg_0.b, _wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(47427u, 30249u)))), firstTrailingBit(-(~vec2<i32>(arg_0.c.x, 2147483647i)))));
    return vec4<bool>(all(global2.b), any(!(!vec4<bool>(true, global2.c.a, global1.x, global2.c.a))), any(select(vec4<bool>(true, arg_0.a, any(global2.b), true), !vec4<bool>(global2.c.a, arg_0.a, global2.a, global1.x), true)), -106f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1480f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false | all(select(!vec4<bool>(true, global2.a, false, true), func_1(Struct_1(true, global2.c.b, vec2<i32>(1i, 67267i)), vec4<i32>(-21254i, 31817i, global2.c.c.x, 39854i)), true)), 10812u, vec2<i32>(countOneBits(~(-2147483647i)), -func_2(func_1(Struct_1(global2.a, u_input.b.x, global2.c.c), vec4<i32>(u_input.a.x, -25784i, 2147483647i, -2147483647i)).xxx, -global2.c.c, _wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(21142u, 25u)]))).c.x));
    var_0 = Struct_1(false, firstLeadingBit(var_0.b), select(_wgslsmith_sub_vec2_i32(~vec2<i32>(-1i, -703i), -vec2<i32>(u_input.a.x, 1i)), vec2<i32>(-1i) * -var_0.c, vec2<bool>(false, true)) >> (vec2<u32>(~(~24301u), ~1u) % vec2<u32>(32u)));
    global2 = Struct_2(true, global2.b, Struct_1(global1.x, ~(~(20783u & global2.c.b)), ~abs(u_input.a.zx >> (u_input.b.yz % vec2<u32>(32u)))));
    var_0 = Struct_1(false, ~(~reverseBits(_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(var_0.b, 1u)))), _wgslsmith_sub_vec2_i32(-vec2<i32>(countOneBits(var_0.c.x), global2.c.c.x), ~(var_0.c << (u_input.b.xx % vec2<u32>(32u)))));
    let var_1 = !global2.b;
    let var_2 = global2.c.b;
    global4 = array<i32, 8>();
    global3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~(-2147483647i))), vec4<u32>(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(28079u, 4294967295u, 83111u), vec3<u32>(45712u, global2.c.b, 0u)), select(u_input.b, vec3<u32>(4294967295u, 1u, u_input.b.x), vec3<bool>(false, var_0.a, true))), u_input.b.x, 1u, _wgslsmith_add_u32(u_input.c, var_0.b)));
}

