struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 27> = array<f32, 27>(1354f, -671f, -2079f, 201f, 1015f, -279f, 1171f, 128f, 453f, -1000f, 206f, -1020f, -1000f, 658f, -1866f, 457f, 1027f, 286f, 541f, 760f, -1709f, -699f, 718f, 465f, -1629f, -889f, 748f);

var<private> global2: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(vec4<u32>(1u, 91638u, 36079u, 4294967295u), vec4<u32>(47150u, 4294967295u, 4294967295u, 42482u), vec3<i32>(0i, 1i, -1019i), Struct_2(true, -1i, vec3<f32>(-252f, -1161f, -969f)), vec3<u32>(1u, 4294967295u, 7038u)), Struct_4(vec4<u32>(6499u, 4294967295u, 24818u, 41930u), vec4<u32>(1u, 4294967295u, 1u, 80320u), vec3<i32>(-8453i, -1103i, 2147483647i), Struct_2(true, 1i, vec3<f32>(-379f, -171f, 139f)), vec3<u32>(0u, 30975u, 0u)), Struct_4(vec4<u32>(1u, 32533u, 4294967295u, 2519u), vec4<u32>(6650u, 1u, 34134u, 1u), vec3<i32>(22132i, -1i, 0i), Struct_2(true, -1i, vec3<f32>(839f, -491f, 1397f)), vec3<u32>(0u, 0u, 0u)), Struct_4(vec4<u32>(4294967295u, 16211u, 88650u, 1u), vec4<u32>(64770u, 36444u, 33600u, 2722u), vec3<i32>(2147483647i, -9794i, -7738i), Struct_2(true, 26489i, vec3<f32>(118f, -786f, -918f)), vec3<u32>(53834u, 20343u, 16771u)), Struct_4(vec4<u32>(41465u, 58727u, 131481u, 1u), vec4<u32>(4294967295u, 1u, 64803u, 0u), vec3<i32>(65729i, -9430i, -1i), Struct_2(false, -42218i, vec3<f32>(639f, -273f, 892f)), vec3<u32>(1u, 808u, 1u)), Struct_4(vec4<u32>(0u, 1020u, 0u, 52137u), vec4<u32>(0u, 40299u, 4294967295u, 1u), vec3<i32>(42006i, 44978i, 0i), Struct_2(false, 35139i, vec3<f32>(1000f, -323f, -1000f)), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_4(vec4<u32>(83813u, 31398u, 4294967295u, 1u), vec4<u32>(28290u, 89967u, 4294967295u, 4294967295u), vec3<i32>(-1i, 21007i, i32(-2147483648)), Struct_2(false, 1i, vec3<f32>(753f, -1000f, -1762f)), vec3<u32>(73030u, 62681u, 4294967295u)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    global0 = !(global1[_wgslsmith_index_u32(41563u, 27u)] < _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~46056u, 27u)] * _wgslsmith_f_op_f32(sign(-526f))));
    var var_1 = vec3<bool>(_wgslsmith_div_u32(4294967295u, firstLeadingBit(u_input.c)) != 99913u, all(vec2<bool>(any(vec2<bool>(true, true)), true)), !any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))));
    let var_2 = !vec2<bool>(!var_1.x, all(vec2<bool>(true, true)));
    var var_3 = var_1.x & var_1.x;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.b << ((vec4<u32>(u_input.b.x, 2401u, 13647u, u_input.b.x) ^ u_input.b) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(u_input.c, u_input.b.x, u_input.c, 11966u)))));
}

