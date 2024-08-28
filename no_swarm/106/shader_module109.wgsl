struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(false, false, true), vec2<i32>(-15364i, 40652i));

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(0u, 41308u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(54234u, 4294967295u, 34909u), vec3<u32>(1u, 4294967295u, 72013u), vec3<u32>(4294967295u, 36924u, 4294967295u), vec3<u32>(15171u, 4294967295u, 13695u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 86185u, 0u), vec3<u32>(0u, 10748u, 39629u), vec3<u32>(1245u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(62184u, 30038u, 54449u), vec3<u32>(23611u, 4294967295u, 31872u), vec3<u32>(1u, 20261u, 0u), vec3<u32>(168094u, 26222u, 38221u), vec3<u32>(0u, 21093u, 1u), vec3<u32>(1u, 30059u, 0u), vec3<u32>(8347u, 15967u, 24973u), vec3<u32>(64703u, 1u, 18601u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(7229u, 55526u, 4294967295u), vec3<u32>(10429u, 43146u, 71328u), vec3<u32>(1u, 13686u, 39388u), vec3<u32>(5758u, 1u, 58562u), vec3<u32>(0u, 8553u, 15316u), vec3<u32>(20407u, 1u, 0u));

var<private> global3: array<Struct_4, 3>;

var<private> global4: vec4<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<u32>, arg_3: vec4<f32>) -> vec4<i32> {
    global2 = array<vec3<u32>, 26>();
    global4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2671f), 1f, global4.x, -633f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(arg_3)))))));
    global4 = arg_3;
    var var_0 = select(global0.a, vec3<bool>(global0.a.x, all(global0.a), false), any(vec3<bool>(true, true, true)));
    let var_1 = all(select(vec2<bool>(!global0.a.x != global0.a.x, !all(vec2<bool>(true, var_0.x))), select(!select(global0.a.xy, var_0.zy, var_0.yy), !select(var_0.xy, vec2<bool>(var_0.x, var_0.x), var_0.x), _wgslsmith_f_op_f32(380f + -657f) == global4.x), var_0.x));
    return ~vec4<i32>(arg_0.x, -38887i, countOneBits(arg_0.x) & global1.x, _wgslsmith_sub_i32(17813i, -_wgslsmith_mod_i32(u_input.b.x, arg_0.x)));
}

fn func_2(arg_0: Struct_3) -> i32 {
    let var_0 = -2147483647i;
    var var_1 = ~reverseBits(u_input.a.x);
    global1 = -min(u_input.b & func_3(vec4<i32>(global0.b.x, 74862i, 39802i, arg_0.b.x), global4.x, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, -1000f, -510f))), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, abs(global1.x), 18326i, -2147483647i), u_input.b));
    global2 = array<vec3<u32>, 26>();
    global1 = u_input.b;
    return min(global0.b.x & global0.b.x, -2147483647i);
}

fn func_1() -> i32 {
    var var_0 = -1i;
    var var_1 = u_input.b;
    var var_2 = Struct_2(2069f, global4.x, Struct_1(~(func_2(Struct_3(vec3<bool>(global0.a.x, global0.a.x, true), vec2<i32>(global0.b.x, global0.b.x))) << (u_input.a.x % 32u)), !vec4<bool>(u_input.a.x < 17320u, !global0.a.x, true, select(global0.a.x, false, true)), _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 0u, 54190u), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), ~_wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(1u, 26u)], vec3<u32>(38764u, 4294967295u, u_input.a.x)))));
    let var_3 = global0.a;
    let var_4 = !(!(!select(select(var_2.c.b.wx, vec2<bool>(var_2.c.b.x, var_3.x), global0.a.x), select(var_3.zy, var_3.xy, var_3.x), vec2<bool>(global0.a.x, false))));
    return 58625i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.wx, vec2<u32>(u_input.a.x, u_input.a.x)), 3u)];
    var var_1 = var_0.b;
    let var_2 = var_0.b;
    let var_3 = _wgslsmith_sub_i32(func_1() >> (~1u % 32u), var_1.c.a);
    var var_4 = select(all(vec2<bool>(global1.x > -2147483647i, true)) | select(!(!var_2.c.b.x), any(vec2<bool>(true, true)), any(!vec2<bool>(var_2.c.b.x, var_0.b.c.b.x))), false, false);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(global0.b)), u_input.a.zwy, var_1.c.a, var_0.a.zz, ~(~u_input.b));
}

