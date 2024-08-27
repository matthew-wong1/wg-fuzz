struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: Struct_4,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

var<private> global1: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(1u, 4294967295u), vec2<u32>(34129u, 33027u), vec2<u32>(63491u, 4294967295u), vec2<u32>(0u, 8308u), vec2<u32>(13582u, 47111u), vec2<u32>(4294967295u, 25526u), vec2<u32>(15712u, 1u));

var<private> global2: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(91752u, 1u), vec2<u32>(65462u, 47993u), vec2<u32>(68932u, 41967u));

var<private> global3: array<i32, 15> = array<i32, 15>(-1i, -37914i, i32(-2147483648), -64028i, i32(-2147483648), -38056i, 28907i, 2147483647i, 2147483647i, 16331i, 1i, 38135i, i32(-2147483648), 30541i, 19676i);

var<private> global4: Struct_2 = Struct_2(vec4<i32>(2147483647i, 87557i, -48670i, -82495i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global2 = array<vec2<u32>, 3>();
    var var_0 = Struct_4(-22685i);
    var var_1 = true;
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(188f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1196f)))), _wgslsmith_div_i32((min(-1i, var_0.a) | ~53609i) << (~(~u_input.b.x) % 32u), var_0.a));
    let var_3 = ~(-1i ^ ~((global3[_wgslsmith_index_u32(2737u, 15u)] << (u_input.b.x % 32u)) | (var_0.a | var_0.a)));
    return var_2.a.a;
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    global3 = array<i32, 15>();
    let var_1 = ~u_input.b.x;
    let var_2 = 2147483647i;
    let var_3 = vec3<i32>(0i, _wgslsmith_dot_vec2_i32(global4.a.xw << (vec2<u32>(4294967295u, firstLeadingBit(var_1)) % vec2<u32>(32u)), -vec2<i32>(-global4.a.x, ~global3[_wgslsmith_index_u32(0u, 15u)])), 14256i);
    return Struct_5(Struct_1(_wgslsmith_f_op_f32(func_3())), firstLeadingBit(var_1) << (firstTrailingBit(u_input.b.x) % 32u), vec4<f32>(453f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -484f))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), Struct_4(-_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, 85208i), u_input.a & vec2<i32>(28486i, global3[_wgslsmith_index_u32(u_input.b.x, 15u)]))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(256f, var_0, var_0, -692f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, -606f, 160f, 425f), vec4<f32>(var_0, var_0, 1392f, 1438f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, 479f, 1522f, var_0)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(336f, -107f, var_0, -540f)))))))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: f32) -> Struct_2 {
    var var_0 = 464f;
    var var_1 = vec2<f32>(177f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-2610f))))) + 720f));
    let var_2 = u_input.a.x;
    global0 = array<vec2<bool>, 20>();
    let var_3 = func_2();
    return Struct_2(vec4<i32>(-1i) * -vec4<i32>(~var_3.d.a, global4.a.x, firstLeadingBit(global3[_wgslsmith_index_u32(u_input.b.x, 15u)]), _wgslsmith_div_i32(0i, -52791i)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1(true, u_input.b.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f))))));
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), select(u_input.a.x, -3579i, true));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, -228f), _wgslsmith_f_op_f32(select(var_0.a.a, 312f, false))) + var_0.a.a))), -1000f);
    var_0 = Struct_3(func_2().a, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(firstLeadingBit(1u), 15u)], var_0.b));
    let var_2 = Struct_5(func_2().a, _wgslsmith_sub_u32(41697u, abs(countOneBits(countOneBits(u_input.b.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, var_1, var_1, -640f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, 293f, 1000f, 529f)))))), Struct_4(2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, var_1, 135f, -605f))))));
    global3 = array<i32, 15>();
    var_0 = Struct_3(Struct_1(413f), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(1f, global4.a, vec4<u32>(min(1u, var_2.b), func_2().b, select(_wgslsmith_mod_u32(37714u, 6374u), var_2.b ^ u_input.b.x, true), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(27703u, 5206u, 93043u)), abs(u_input.b))) << (countOneBits(max(firstLeadingBit(vec4<u32>(1u, 1u, var_2.b, var_2.b)), countOneBits(vec4<u32>(u_input.b.x, var_2.b, u_input.b.x, u_input.b.x)))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, 335f)), _wgslsmith_div_f32(var_1, -983f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_f_op_f32(-var_2.a.a)), _wgslsmith_f_op_f32(-var_0.a.a)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f)), -447f)));
}

