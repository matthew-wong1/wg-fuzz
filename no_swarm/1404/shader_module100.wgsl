struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<i32>, 14>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: vec3<u32> = vec3<u32>(0u, 33916u, 74907u);

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_2(true, !(!(!(!vec4<bool>(false, true, true, global2.x)))), global4[_wgslsmith_index_u32(1u, 26u)], global4[_wgslsmith_index_u32(global3.x, 26u)]);
    let var_1 = Struct_2(true, vec4<bool>(any(select(var_0.b, select(vec4<bool>(global2.x, var_0.a, arg_0.x, true), vec4<bool>(false, arg_0.x, false, global2.x), vec4<bool>(true, arg_0.x, true, false)), any(vec2<bool>(false, true)))), true || select(true, true, global3.x <= 1u), all(var_0.b), any(select(arg_0, global2.xx, true))), Struct_1(true), Struct_1(false));
    var_0 = Struct_2(_wgslsmith_div_u32(~(global3.x | global3.x), 0u) > ~38352u, select(!select(select(var_1.b, var_0.b, arg_0.x), vec4<bool>(var_0.d.a, var_0.c.a, true, true), true), select(vec4<bool>(false, !arg_0.x, arg_0.x, arg_0.x), select(var_0.b, select(vec4<bool>(true, false, true, false), var_0.b, global2.x), vec4<bool>(var_1.b.x, arg_0.x, true, false)), false), false), global4[_wgslsmith_index_u32(min(_wgslsmith_add_u32(global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global3.x, global3.x), vec3<u32>(0u, 0u, global3.x))), global3.x) & _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(global3.x, global3.x), global3.x), abs(1u)), 26u)], global4[_wgslsmith_index_u32(global3.x, 26u)]);
    global4 = array<Struct_1, 26>();
    var var_2 = ~(~(-23511i));
    return global3.x;
}

fn func_2() -> Struct_5 {
    global4 = array<Struct_1, 26>();
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2735f, -1000f) + _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(ceil(1496f))));
    global2 = vec3<bool>(true, global2.x, !(!(any(vec3<bool>(global2.x, global2.x, false)) | any(vec3<bool>(global2.x, false, global2.x)))));
    let var_2 = func_3(select(!global2.yx, !global2.xy, vec2<bool>(!select(global2.x, global2.x, true), false)));
    return Struct_5(Struct_2(!any(select(vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, true, true))), vec4<bool>(true, global2.x, global2.x, global2.x), Struct_1(true && global2.x), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, firstTrailingBit(~var_2)), 26u)]), global4[_wgslsmith_index_u32(countOneBits(global3.x), 26u)], vec4<u32>(global3.x, var_2, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_div_u32(global3.x, global3.x), var_2)), ~0u), Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-154f, 1000f)))) + vec2<f32>(1f, -672f)), vec2<bool>(false, _wgslsmith_div_u32(0u, 37580u) <= global3.x), Struct_3(global4[_wgslsmith_index_u32(20848u, 26u)], Struct_1(10121u >= var_2))), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -522f)), -903f), select(vec2<bool>(true, true), !(!global2.yx), any(vec2<bool>(false, global2.x))), Struct_3(global4[_wgslsmith_index_u32(~global3.x, 26u)], Struct_1(global2.x))));
}

fn func_1(arg_0: i32) -> vec2<u32> {
    let var_0 = func_2();
    let var_1 = arg_0;
    var var_2 = global2.x;
    var var_3 = var_0.a;
    global3 = _wgslsmith_mod_vec3_u32(max(_wgslsmith_mult_vec3_u32(var_0.c.zyy, (var_0.c.xxy >> (var_0.c.xxy % vec3<u32>(32u))) ^ ~var_0.c.ywz), ~var_0.c.yyz), vec3<u32>(~global3.x, ~(~var_0.c.x), func_2().c.x));
    return vec2<u32>(var_0.c.x, ~(0u >> (~var_0.c.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.yz;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1365f + _wgslsmith_f_op_f32(step(-577f, -1656f))))));
    var var_2 = _wgslsmith_mod_vec2_u32(func_1(~max(-17007i, -17438i)), ~countOneBits(vec2<u32>(4294967295u, global3.x))) | ~reverseBits(vec2<u32>(global3.x, global3.x));
    var var_3 = func_2();
    global4 = array<Struct_1, 26>();
    var var_4 = var_3.e.c;
    var var_5 = Struct_3(Struct_1(global2.x), var_3.a.d);
    var var_6 = var_3.d.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-(u_input.a ^ -7954i)), (firstTrailingBit(-2147483647i) << (var_2.x % 32u)) & u_input.a, u_input.a & -2147483647i, u_input.a));
}

