struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
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

var<private> global0: array<u32, 29>;

var<private> global1: array<vec3<bool>, 30>;

var<private> global2: Struct_3;

var<private> global3: Struct_3 = Struct_3(true, true, vec4<f32>(-1000f, 516f, 251f, -1215f), Struct_2(vec3<bool>(false, false, true), vec4<u32>(1540u, 12727u, 48622u, 1u)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    return select(vec3<bool>(false, global2.d.a.x, true), global1[_wgslsmith_index_u32(u_input.b.x, 30u)], !global2.d.a);
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> vec2<bool> {
    let var_0 = 676f;
    let var_1 = !func_3(Struct_1(select(select(vec4<bool>(false, arg_0.b, false, global3.d.a.x), vec4<bool>(true, false, true, global2.a), arg_0.d.a.x), select(vec4<bool>(global2.b, arg_0.a, arg_0.a, arg_0.b), vec4<bool>(global3.a, true, false, false), vec4<bool>(true, global2.d.a.x, global3.d.a.x, true)), vec4<bool>(true, true, true, true))), global2.c.x);
    var var_2 = Struct_3(var_1.x, !any(var_1.zy), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-158f, -3245f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - arg_0.c))), Struct_2(vec3<bool>(true, !global3.d.a.x, !var_1.x), vec4<u32>(firstLeadingBit(0u) ^ arg_0.d.b.x, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~global2.d.b.x, 29u)], ~39045u), firstLeadingBit(_wgslsmith_mult_u32(global2.d.b.x, global3.d.b.x)), 28296u | u_input.b.x)));
    var var_3 = ~var_2.d.b.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c.zwy), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(round(1000f)), arg_1) - vec3<f32>(-774f, _wgslsmith_f_op_f32(-498f - var_2.c.x), 1f))) + var_2.c.xzz);
    return var_2.d.a.zz;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = global2.c.zx;
    let var_1 = vec4<bool>(global3.b, global3.d.a.x, all(select(select(vec2<bool>(true, global2.b), func_2(Struct_3(true, false, vec4<f32>(335f, 1064f, -315f, global2.c.x), Struct_2(vec3<bool>(true, global3.b, false), vec4<u32>(56499u, 0u, 41819u, global3.d.b.x))), -568f), global3.d.a.x), global2.d.a.yx, u_input.c >= arg_0.x)), !any(vec2<bool>(all(vec4<bool>(false, arg_1.x, global3.b, global2.d.a.x)), false || arg_1.x)));
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4573u, 29u)], 20253u, global2.d.b.x, u_input.b.x), max(global3.d.b, global3.d.b)) >> ((global2.d.b << (min(vec4<u32>(global3.d.b.x, u_input.b.x, global2.d.b.x, 109818u), global3.d.b) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(global0[_wgslsmith_index_u32(~35784u, 29u)], global3.d.b.x, select(~global3.d.b.x, ~global2.d.b.x, all(global3.d.a)), u_input.b.x)), _wgslsmith_clamp_vec4_u32(~select(~vec4<u32>(global2.d.b.x, 0u, 0u, 1u), global2.d.b, all(var_1)), ~(~global3.d.b), vec4<u32>(global2.d.b.x, max(global2.d.b.x, global2.d.b.x | global2.d.b.x), _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 1u), ~global0[_wgslsmith_index_u32(4294967295u, 29u)]), ~(~4294967295u))));
    return select(select(select(var_1, vec4<bool>(global3.d.a.x || true, true, global3.c.x < 481f, global2.c.x != -707f), select(var_1, !vec4<bool>(false, arg_1.x, true, arg_1.x), any(global3.d.a.yy))), var_1, vec4<bool>(var_1.x, global3.b, true, arg_1.x)), !vec4<bool>(!(!var_1.x), true, !select(global3.b, true, true), select(global3.b, var_1.x | global2.a, true && global3.d.a.x)), !select(var_1, !(!var_1), false));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(any(func_1(~(vec4<i32>(u_input.a, u_input.c, u_input.a, 2147483647i) >> (vec4<u32>(u_input.b.x, global2.d.b.x, 37199u, 1937u) % vec4<u32>(32u))), vec3<bool>(global2.a, true, global3.a && false))), any(vec3<bool>(any(vec4<bool>(global3.d.a.x, true, global2.b, global2.b)) | !global3.d.a.x, false, true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global2.c))), global3.d);
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    let var_0 = min(0u, ~(~global3.d.b.x));
    let var_1 = Struct_1(!(!(!(!vec4<bool>(false, false, global3.a, true)))));
    var var_2 = global2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(global3.c.x, _wgslsmith_f_op_f32(max(1705f, global3.c.x))));
}

