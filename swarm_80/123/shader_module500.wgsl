struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
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

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(19934u, vec3<bool>(false, false, false), vec3<u32>(1u, 0u, 71183u), vec2<bool>(false, true), vec2<u32>(1u, 1u)), Struct_1(4294967295u, vec3<bool>(true, false, false), vec3<u32>(4722u, 4294967295u, 4294967295u), vec2<bool>(true, false), vec2<u32>(0u, 0u)), Struct_1(32356u, vec3<bool>(true, false, true), vec3<u32>(4294967295u, 18282u, 9546u), vec2<bool>(true, true), vec2<u32>(1u, 4294967295u)), Struct_1(0u, vec3<bool>(false, true, true), vec3<u32>(19060u, 74173u, 6977u), vec2<bool>(true, true), vec2<u32>(0u, 4294967295u)), Struct_1(78447u, vec3<bool>(false, false, false), vec3<u32>(49506u, 57833u, 4294967295u), vec2<bool>(true, true), vec2<u32>(1u, 4294967295u)), Struct_1(1u, vec3<bool>(false, false, false), vec3<u32>(45749u, 99345u, 0u), vec2<bool>(false, true), vec2<u32>(24514u, 20653u)), Struct_1(9008u, vec3<bool>(true, false, false), vec3<u32>(0u, 33828u, 21859u), vec2<bool>(false, true), vec2<u32>(4294967295u, 149u)), Struct_1(8734u, vec3<bool>(true, true, false), vec3<u32>(35817u, 36390u, 0u), vec2<bool>(false, false), vec2<u32>(1u, 0u)), Struct_1(0u, vec3<bool>(true, false, false), vec3<u32>(4294967295u, 1u, 1u), vec2<bool>(false, true), vec2<u32>(4294967295u, 89301u)), Struct_1(4294967295u, vec3<bool>(true, true, true), vec3<u32>(0u, 1153u, 0u), vec2<bool>(true, false), vec2<u32>(17448u, 4294967295u)), Struct_1(4294967295u, vec3<bool>(true, false, true), vec3<u32>(1u, 0u, 1u), vec2<bool>(true, true), vec2<u32>(1u, 22707u)), Struct_1(10120u, vec3<bool>(false, true, false), vec3<u32>(0u, 42476u, 34282u), vec2<bool>(true, true), vec2<u32>(8475u, 50657u)), Struct_1(29040u, vec3<bool>(false, true, false), vec3<u32>(0u, 25453u, 7193u), vec2<bool>(false, true), vec2<u32>(1u, 0u)), Struct_1(11751u, vec3<bool>(false, false, true), vec3<u32>(92516u, 31939u, 33590u), vec2<bool>(true, false), vec2<u32>(0u, 0u)), Struct_1(46457u, vec3<bool>(true, false, false), vec3<u32>(4294967295u, 8334u, 0u), vec2<bool>(true, true), vec2<u32>(4294967295u, 0u)), Struct_1(63369u, vec3<bool>(false, true, false), vec3<u32>(77770u, 0u, 15741u), vec2<bool>(false, true), vec2<u32>(0u, 4294967295u)), Struct_1(15233u, vec3<bool>(false, true, true), vec3<u32>(143694u, 29653u, 17279u), vec2<bool>(false, false), vec2<u32>(0u, 36060u)), Struct_1(0u, vec3<bool>(false, false, true), vec3<u32>(4294967295u, 47201u, 1u), vec2<bool>(false, true), vec2<u32>(36882u, 83493u)), Struct_1(25332u, vec3<bool>(false, true, true), vec3<u32>(4294967295u, 0u, 1u), vec2<bool>(false, false), vec2<u32>(0u, 49576u)), Struct_1(27188u, vec3<bool>(false, true, false), vec3<u32>(35402u, 1u, 4294967295u), vec2<bool>(true, false), vec2<u32>(1u, 3039u)), Struct_1(4294967295u, vec3<bool>(false, true, false), vec3<u32>(1u, 1u, 52012u), vec2<bool>(true, true), vec2<u32>(4294967295u, 95734u)), Struct_1(4294967295u, vec3<bool>(false, false, false), vec3<u32>(8233u, 22336u, 26155u), vec2<bool>(true, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(33668u, vec3<bool>(true, false, true), vec3<u32>(61778u, 0u, 62067u), vec2<bool>(true, false), vec2<u32>(4294967295u, 22052u)), Struct_1(2555u, vec3<bool>(false, true, false), vec3<u32>(15811u, 4294967295u, 92434u), vec2<bool>(false, true), vec2<u32>(23302u, 78238u)), Struct_1(17217u, vec3<bool>(false, false, true), vec3<u32>(46855u, 7123u, 1u), vec2<bool>(true, false), vec2<u32>(1977u, 1u)));

var<private> global1: array<f32, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = 1u;
    var var_1 = all(!select(select(vec3<bool>(true, arg_2.d.x, arg_2.d.x), vec3<bool>(arg_2.b.x, false, arg_2.b.x), true), !arg_2.b, false));
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    return min(117920u, _wgslsmith_mod_u32(arg_0.x, _wgslsmith_mult_u32(4346u, firstLeadingBit(firstTrailingBit(u_input.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~12609u, 25u)];
    var var_1 = _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~(abs(var_0.c.x) & _wgslsmith_div_u32(4294967295u >> (u_input.c.x % 32u), func_1(u_input.c, 145f, Struct_1(var_0.a, vec3<bool>(var_0.d.x, var_0.d.x, false), vec3<u32>(var_0.a, 19352u, 1u), vec2<bool>(false, var_0.b.x), vec2<u32>(var_0.c.x, var_0.c.x))))), 23u)]));
    var var_2 = u_input.b.x;
    let var_3 = select(select(select(select(!vec4<bool>(var_0.b.x, true, var_0.d.x, true), vec4<bool>(var_0.b.x, false, true, true), !vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.d.x)), !vec4<bool>(false, var_0.d.x, var_0.d.x, true), !select(vec4<bool>(var_0.d.x, false, false, false), vec4<bool>(var_0.d.x, var_0.b.x, var_0.b.x, var_0.d.x), var_0.b.x)), select(!(!vec4<bool>(true, true, var_0.b.x, true)), vec4<bool>(true, true, true, true), var_0.d.x), vec4<bool>(any(select(var_0.b.yz, var_0.d, var_0.b.xz)), true, var_0.d.x & (-778f < global1[_wgslsmith_index_u32(20803u, 23u)]), var_0.d.x)), vec4<bool>(var_0.d.x, var_0.b.x, true, true), !(!(!select(vec4<bool>(var_0.d.x, true, var_0.b.x, false), vec4<bool>(var_0.d.x, var_0.b.x, true, var_0.b.x), vec4<bool>(false, var_0.b.x, false, var_0.d.x)))));
    var_2 = u_input.b.x;
    let var_4 = 60130u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

