struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_2(vec4<bool>(true, true, false, false)));
    global0 = array<vec3<u32>, 3>();
    let var_1 = Struct_1(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(floor(-385f)), -379f), u_input.a);
    var var_2 = var_0.a;
    let var_3 = var_1.b;
    return var_0.a.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_1 {
    global0 = array<vec3<u32>, 3>();
    var var_0 = func_3();
    global0 = array<vec3<u32>, 3>();
    global0 = array<vec3<u32>, 3>();
    let var_1 = ~(-1i);
    return Struct_1(~(~var_1), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, _wgslsmith_f_op_f32(ceil(-706f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1382f)) + _wgslsmith_f_op_f32(f32(-1f) * -228f)), 584f))), 63921i);
}

fn func_1() -> vec3<u32> {
    global0 = array<vec3<u32>, 3>();
    var var_0 = Struct_3(Struct_2(vec4<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), any(vec2<bool>(true, false)))));
    var var_1 = func_2(Struct_2(vec4<bool>(false, !var_0.a.a.x, var_0.a.a.x, true)), vec3<bool>(!var_0.a.a.x, false, false));
    let var_2 = !(!(!(_wgslsmith_f_op_f32(step(var_1.b.x, -1608f)) >= var_1.b.x)));
    var var_3 = var_1.b.x;
    return ~reverseBits(~_wgslsmith_mod_vec3_u32(select(vec3<u32>(0u, 24095u, 15118u), global0[_wgslsmith_index_u32(24428u, 3u)], var_0.a.a.yyy), vec3<u32>(1u, 21104u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 3>();
    let var_0 = func_1() >> (select(vec3<u32>(~(~691u), ~_wgslsmith_clamp_u32(14283u, 1u, 74181u), firstLeadingBit(firstTrailingBit(15915u))), ~vec3<u32>(~55742u, ~19845u, min(9616u, 1226u)), true) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(min(243f, 552f));
    var_1 = 1f;
    var_1 = -1571f;
    var var_2 = abs(4294967295u) ^ var_0.x;
    var var_3 = vec2<f32>(-819f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -494f) + _wgslsmith_f_op_f32(-1f)))));
    let var_4 = Struct_3(Struct_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true))), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_0.x, 3u)], vec2<i32>(i32(-1i) * -80192i, min(-1i, _wgslsmith_sub_i32(~u_input.a, -u_input.a))));
}

