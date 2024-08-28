struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: array<vec4<f32>, 5>;

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global3: array<vec4<i32>, 27>;

var<private> global4: Struct_4 = Struct_4(-1i, Struct_1(vec2<i32>(-54977i, 0i), vec4<u32>(2964u, 0u, 41321u, 57310u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: bool) -> vec3<u32> {
    global2 = vec4<bool>(!arg_2, all(!global2.wwz), u_input.a.x < ~1i, arg_2);
    let var_0 = arg_1.b;
    global1 = array<vec4<f32>, 5>();
    let var_1 = arg_2;
    return ~firstTrailingBit(global4.b.b.xxx ^ _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_1.b.b.x), vec3<u32>(global4.b.b.x, var_0.b.x, var_0.b.x)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    global4 = arg_0;
    var var_0 = vec4<u32>(23340u, ~abs(global4.b.b.x), 1u, 5925u);
    let var_1 = global4.b;
    let var_2 = Struct_4(abs(arg_0.b.a.x), Struct_1(vec2<i32>(~2147483647i, countOneBits(-23691i)), ~var_1.b));
    let var_3 = !all(select(select(select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(true, true, true), global2.x), !global2.wwz, false), select(!global2.yzz, select(vec3<bool>(global2.x, true, global2.x), global2.yxy, vec3<bool>(false, global2.x, global2.x)), global2.yzz), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, global2.x, true))));
    return select(countOneBits(var_0.x), var_2.b.b.x, !(198f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(834f, 1052f, true)), -318f, global2.x))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4, arg_3: Struct_3) -> i32 {
    let var_0 = -1166f;
    global3 = array<vec4<i32>, 27>();
    var var_1 = vec2<bool>(all(vec3<bool>(true, false, select(all(vec2<bool>(false, global2.x)), true, false | global2.x))), global2.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(f32(-1f) * -629f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(634f, var_0, -1000f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(ceil(-437f)), -1404f)), vec3<f32>(var_0, var_0, 531f), !global2.x)));
    var var_3 = vec4<i32>(global4.a, -(~arg_2.a), 2147483647i, u_input.a.x);
    return select(1i, -2147483647i, true) | ~45i;
}

fn func_1() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(global4.b.b.x, 18u)];
    let var_1 = ~abs(global4.b.b.xxx & _wgslsmith_sub_vec3_u32(func_2(global2.yz, Struct_4(1i, Struct_1(vec2<i32>(var_0.b.e, u_input.a.x), vec4<u32>(1u, 0u, global4.b.b.x, global4.b.b.x))), var_0.b.b), var_0.b.c.b.yyy));
    global1 = array<vec4<f32>, 5>();
    let var_2 = Struct_2(var_0.b.a, var_0.a.x, Struct_1(~(vec2<i32>(var_0.b.c.a.x, u_input.a.x) & _wgslsmith_div_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.a.x, 35934i))), var_0.b.c.b), u_input.a, func_4(global4.b, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(var_0.b.c.b.xyw), _wgslsmith_div_vec3_u32(var_1, global4.b.b.xxw)), vec3<u32>(~var_1.x, ~var_0.b.c.b.x, func_3(Struct_4(var_0.b.d.x, global4.b)))), Struct_4(-(~global4.b.a.x), global4.b), global0[_wgslsmith_index_u32(func_3(Struct_4(-2147483647i, var_0.b.c)), 18u)]));
    var var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~var_2.c.b.wwx, abs(~(var_2.c.b.yxx & var_1))), vec3<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.c.b.x, global4.b.b.x, 107736u), abs(var_2.c.b.yyw)), ~(~global4.b.b.x) >> (var_0.b.c.b.x % 32u), global4.b.b.x));
    return var_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global3 = array<vec4<i32>, 27>();
    var var_1 = Struct_4(global4.a, Struct_1(abs(vec2<i32>(firstTrailingBit(0i), var_0.a.x)), ~var_0.b));
    global2 = vec4<bool>(global2.x, true, all(select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, false), false)) || false, false);
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(947f * 529f), -742f));
    var_1 = Struct_4(u_input.a.x, Struct_1(~(~countOneBits(u_input.a.zx)), global4.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(30172u);
}

