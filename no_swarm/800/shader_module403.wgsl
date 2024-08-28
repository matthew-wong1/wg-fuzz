struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(67983i);

var<private> global1: array<vec3<f32>, 5>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: Struct_1 = Struct_1(-1i, 1021f, vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec3<u32>(0u, 1u, 0u));

var<private> global4: Struct_4 = Struct_4(Struct_3(true, 0i, vec2<i32>(0i, -35670i), Struct_1(-1i, -178f, vec4<u32>(0u, 14900u, 1u, 1u), vec3<u32>(48403u, 23683u, 9787u)), vec2<u32>(1u, 0u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> vec2<bool> {
    global0 = Struct_2(-(i32(-1i) * -1i));
    return global2.zy;
}

fn func_3() -> f32 {
    let var_0 = global3.b;
    let var_1 = ~(~_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(2889u, 24919u, global4.a.e.x, global3.d.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 635u, global3.d.x, 74914u), ~vec4<u32>(global4.a.d.d.x, global4.a.e.x, global4.a.e.x, global3.d.x))));
    global4 = Struct_4(Struct_3(global4.a.a, -abs(global3.a), abs(vec2<i32>(global3.a, ~global3.a)), Struct_1(-29007i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.b, -1087f)), _wgslsmith_div_f32(1833f, 3055f)), vec4<u32>(~36650u, ~global4.a.d.d.x, ~0u, 35230u), ~var_1.xxw), _wgslsmith_mod_vec2_u32(countOneBits(global3.d.xx), ~var_1.ww)));
    let var_2 = vec3<f32>(1406f, -353f, -1403f);
    global1 = array<vec3<f32>, 5>();
    return global3.b;
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    var var_0 = !global2.x;
    let var_1 = select(!global2.zz, func_2(arg_0, ~abs(vec3<i32>(0i, 0i, global0.a)) >> (global3.d % vec3<u32>(32u))), !(!all(!vec3<bool>(global4.a.a, global2.x, arg_0.a))));
    let var_2 = firstTrailingBit(0i << (~(~(global3.d.x | 22562u)) % 32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(687f + global4.a.d.b))) * _wgslsmith_f_op_f32(-global3.b))));
    let var_4 = var_1.x || !(!arg_0.a);
    return Struct_2(-(u_input.a & -global3.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~(~(~max(20386u, 4294967295u))), global4.a.d.d.x);
    let var_1 = global2.zx;
    let var_2 = func_1(global4.a);
    var_0 = global3.d.yx;
    global0 = var_2;
    var var_3 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, var_0.x, 4294967295u), ~global3.c.zxy) >> (~_wgslsmith_sub_u32(var_0.x, global3.c.x) % 32u), ~(~(1u >> (global4.a.d.c.x % 32u))))), 5u)];
    global3 = Struct_1(~global3.a, -1260f, _wgslsmith_mod_vec4_u32(firstLeadingBit(global3.c | global3.c), vec4<u32>(~var_0.x & abs(global4.a.e.x), global4.a.d.c.x | firstTrailingBit(global3.d.x), reverseBits(~10329u), 8692u)), ~(~select(~global3.c.www, vec3<u32>(0u, var_0.x, global3.c.x), select(vec3<bool>(false, true, false), vec3<bool>(false, global4.a.a, global2.x), vec3<bool>(global4.a.a, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-global3.b), var_3.x), abs(~vec2<u32>(global3.d.x, global4.a.d.d.x | 0u)), global3.c);
}

