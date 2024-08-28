struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: u32 = 10997u;

var<private> global2: array<i32, 9> = array<i32, 9>(52769i, i32(-2147483648), 24797i, -10395i, -38271i, -10447i, 50498i, -5993i, 1i);

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global4: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> i32 {
    global4 = !(!(!(!select(vec4<bool>(global4.x, global3.x, false, false), vec4<bool>(true, global4.x, global4.x, global4.x), vec4<bool>(global3.x, true, true, true)))));
    var var_0 = vec4<bool>(any(!global4.wwz), global3.x, true, false);
    global2 = array<i32, 9>();
    let var_1 = abs(u_input.e);
    var var_2 = u_input.d;
    return 1i;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: Struct_1) -> bool {
    var var_0 = global4.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(627f, -611f, -1908f, 1698f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(197f, -330f, -619f, 1916f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1850f, 1000f, 599f, 1000f)))))));
    var var_2 = ~u_input.c.yxx;
    let var_3 = vec4<bool>(false, global4.x, false, !(!select(global4.x && true, all(global3.yx), all(vec4<bool>(global4.x, false, global4.x, true)))));
    var var_4 = -(vec3<i32>(1i, arg_0.x, ~(-1i)) & (-vec3<i32>(global2[_wgslsmith_index_u32(0u, 9u)], 27367i, global2[_wgslsmith_index_u32(arg_1.x, 9u)]) << (_wgslsmith_add_vec3_u32(u_input.e, arg_1.zwy) % vec3<u32>(32u)))) >> (vec3<u32>(_wgslsmith_div_u32(~(arg_1.x >> (36764u % 32u)), var_2.x), 79813u, u_input.a) % vec3<u32>(32u));
    return true;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = max(-vec2<i32>(1i, ~u_input.d.x), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, select(0i, -48191i, false)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, u_input.d.x), select(vec2<i32>(arg_1.x, arg_1.x), u_input.d.ww, vec2<bool>(global4.x, global4.x)), vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 9u)], global2[_wgslsmith_index_u32(u_input.c.x, 9u)])), vec2<i32>(1i, -global2[_wgslsmith_index_u32(arg_2.x, 9u)])));
    var var_1 = Struct_1(~arg_1.x, select(global3.wzx, vec3<bool>(true, func_3(arg_1, ~u_input.c, -vec4<i32>(-53125i, var_0.x, -892i, 1i), Struct_1(-81523i, vec3<bool>(global3.x, global3.x, true), true, global3.x)), true != all(vec3<bool>(global4.x, global4.x, false))), select(!global4.yyx, !global4.wzw, global3.wyx)), !(!(!(global3.x && global3.x))), global3.x);
    global1 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~abs(19951u), ~select(4294967295u, 20946u, global3.x)), u_input.c.yy), arg_2);
    let var_2 = reverseBits(u_input.b & arg_2.x);
    let var_3 = true;
    return Struct_1(_wgslsmith_add_i32(0i, 2147483647i), !global4.xyy, false, !any(select(vec2<bool>(global3.x, false), !global4.ww, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.x;
    global1 = ~_wgslsmith_div_u32(~(u_input.a | (u_input.c.x << (52631u % 32u))), u_input.e.x);
    global2 = array<i32, 9>();
    var var_1 = 0u;
    var var_2 = func_2(_wgslsmith_f_op_f32(1478f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-195f, -968f))), vec2<i32>(func_1(), -u_input.d.x), abs(~vec2<u32>(min(9144u, u_input.b), ~u_input.a)));
    let var_3 = select(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d.ww, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d.x, -2147483647i), ~vec2<i32>(-1i, 23570i))), u_input.d.zy), select(-16157i, -10997i, !global4.x), global4.x);
    var var_4 = Struct_1(-28831i & var_3, vec3<bool>(func_2(-932f, u_input.d.yx, abs(vec2<u32>(u_input.a, 0u)) >> (~u_input.c.xz % vec2<u32>(32u))).c, any(func_2(-795f, vec2<i32>(u_input.d.x, global2[_wgslsmith_index_u32(u_input.a, 9u)]), countOneBits(u_input.c.yw)).b), global3.x), func_2(-1000f, reverseBits(firstTrailingBit(-u_input.d.zy)), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.e.zx, u_input.c.wz, ~u_input.c.wz), vec2<u32>(0u, ~u_input.a))).c, global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(-vec2<i32>(global2[_wgslsmith_index_u32(52966u, 9u)], var_3) & u_input.d.xz));
}

