struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec4<u32>, 6>;

var<private> global2: vec4<f32> = vec4<f32>(208f, -467f, 143f, 365f);

var<private> global3: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(global3.b, firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 0u), countOneBits(vec2<u32>(55810u, 3524u))))));
    var var_1 = Struct_2(var_0.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(round(global2.zz));
    var var_3 = _wgslsmith_dot_vec2_u32(select(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.a.b.x), var_1.a.a ^ global3.a)), vec2<u32>(0u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, global3.b.x, var_1.a.a.x), vec3<u32>(80423u, 8798u, 57039u), false), ~vec3<u32>(25550u, u_input.c, var_1.a.a.x))), arg_0.wy), reverseBits(~firstTrailingBit(vec2<u32>(0u, u_input.c))) << (~global3.a % vec2<u32>(32u)));
    let var_4 = Struct_4(var_0.a);
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, var_2.x, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, global2.x, -1000f, var_2.x) * vec4<f32>(var_2.x, 951f, -378f, -792f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1276f, 1538f, -608f, 1387f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-518f, var_2.x, 497f, 459f) - vec4<f32>(1173f, var_2.x, var_2.x, global2.x)))))))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(false, true | global0.x, true, select(true, false, arg_0 == u_input.e.x) == false)));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 259f, -144f) + vec4<f32>(global2.x, 1507f, 437f, global2.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-257f, 1061f, -496f, global2.x), vec4<f32>(global2.x, -1664f, global2.x, 108f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(false, global0.x, global0.x, false))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-346f, global2.x, -617f, -1929f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1318f, -590f, _wgslsmith_f_op_f32(-global2.x), 499f)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(572f, global2.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(237f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    var var_1 = Struct_4(Struct_1(_wgslsmith_div_vec2_u32((global3.b ^ vec2<u32>(48531u, u_input.c)) & max(vec2<u32>(64048u, 19014u), vec2<u32>(global3.b.x, global3.b.x)), u_input.b), ~global3.a));
    let var_2 = global2.x;
    return Struct_2(Struct_1(vec2<u32>(~47053u, reverseBits(4294967295u & u_input.b.x)), vec2<u32>(~firstLeadingBit(4294967295u), 1u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_2) -> f32 {
    var var_0 = arg_1.zyz;
    global0 = !(!(!(!(!vec4<bool>(false, global0.x, global0.x, true)))));
    let var_1 = vec4<bool>(!(!all(global0.zz) == !global0.x), true, !global0.x, false);
    let var_2 = Struct_3(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, firstTrailingBit(10264i)), _wgslsmith_div_vec2_i32(vec2<i32>(-11646i, 19247i) << (u_input.b % vec2<u32>(32u)), abs(u_input.e.yx))));
    global3 = arg_0.a;
    return -185f;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 722f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) * _wgslsmith_f_op_f32(global2.x * -713f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global2.x)), global2.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1244f, global2.x)), _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1033f), global2.x) - vec4<f32>(_wgslsmith_f_op_f32(global2.x + -1000f), _wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_div_f32(-516f, global2.x), _wgslsmith_f_op_f32(min(274f, global2.x)))) + vec4<f32>(-1360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(536f * 1058f)), _wgslsmith_f_op_f32(func_4(func_2(0i), vec4<u32>(arg_0.x, arg_1, 1u, global3.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, 0u, arg_0.x), -827f, Struct_2(Struct_1(vec2<u32>(11768u, u_input.c), vec2<u32>(55817u, arg_0.x))))), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-global2.x)))));
    global1 = array<vec4<u32>, 6>();
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(935f, global2.x, -189f, -1536f))), vec4<f32>(-658f, global2.x, _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, true, true, global0.x))).x, 274f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x), vec4<f32>(global2.x, -871f, -878f, 554f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1320f, 117f, global2.x, -799f))))));
    global1 = array<vec4<u32>, 6>();
    global0 = !(!vec4<bool>(~u_input.b.x < ~1u, true, !(true | global0.x), global0.x));
    return Struct_3(vec2<i32>(u_input.e.x >> (abs(~arg_0.x) % 32u), _wgslsmith_dot_vec2_i32(u_input.e.xy, -_wgslsmith_div_vec2_i32(u_input.e.zx, vec2<i32>(u_input.e.x, u_input.e.x)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<i32>) -> vec4<i32> {
    var var_0 = !(all(vec4<bool>(global0.x, any(global0.ywy), false, global0.x)) || any(select(global0.yyy, vec3<bool>(global0.x, global0.x, true), any(global0.xy))));
    let var_1 = ~0u == abs(global3.b.x);
    var var_2 = global1[_wgslsmith_index_u32(arg_1.x, 6u)];
    let var_3 = u_input.d;
    let var_4 = vec3<bool>(any(global0.zw), !var_1, any(!select(!vec4<bool>(false, var_1, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, global0.x, global0.x, global0.x), var_1), !vec4<bool>(global0.x, false, var_1, true))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(global1[_wgslsmith_index_u32(u_input.c, 6u)], abs(~global3.a.x)), countOneBits(~(~global3.b)), countOneBits(u_input.e)) | vec4<i32>(i32(-1i) * -7106i, -min(~u_input.d, -2147483647i), 32150i, _wgslsmith_mult_i32(min(u_input.d, u_input.a) ^ ~2147483647i, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-global2.yxy), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.xw)) * global2.xx)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1144f - -1276f) * _wgslsmith_f_op_f32(-global2.x))))));
}

