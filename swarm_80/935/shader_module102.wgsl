struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<f32>(-338f, -2323f, -1000f, -946f), vec3<bool>(true, true, true), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec4<f32>(-1766f, -579f, 1749f, -1000f), vec3<bool>(false, false, false), vec3<u32>(7357u, 1u, 4294967295u)), Struct_1(vec4<f32>(-1143f, -1012f, -489f, -1349f), vec3<bool>(true, false, false), vec3<u32>(0u, 5755u, 4294967295u)), Struct_1(vec4<f32>(-311f, -304f, 1646f, 235f), vec3<bool>(true, true, false), vec3<u32>(1u, 36844u, 1u)), Struct_1(vec4<f32>(1496f, -639f, 1431f, -701f), vec3<bool>(true, false, true), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(vec4<f32>(946f, 423f, 234f, 1132f), vec3<bool>(false, false, true), vec3<u32>(37457u, 4294967295u, 1u)), Struct_1(vec4<f32>(153f, 243f, -1589f, -517f), vec3<bool>(false, true, false), vec3<u32>(14936u, 50054u, 0u)), Struct_1(vec4<f32>(-1634f, 272f, 705f, -392f), vec3<bool>(true, false, true), vec3<u32>(52851u, 46618u, 78719u)), Struct_1(vec4<f32>(1372f, -641f, 1200f, 1000f), vec3<bool>(true, false, true), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec4<f32>(1614f, -569f, -207f, -557f), vec3<bool>(true, false, true), vec3<u32>(6146u, 0u, 121391u)), Struct_1(vec4<f32>(888f, -209f, 832f, 1050f), vec3<bool>(true, true, false), vec3<u32>(23333u, 4294967295u, 40904u)), Struct_1(vec4<f32>(-1669f, -662f, 1829f, 643f), vec3<bool>(false, true, true), vec3<u32>(6260u, 0u, 0u)), Struct_1(vec4<f32>(731f, -786f, 1000f, 958f), vec3<bool>(true, false, true), vec3<u32>(0u, 17620u, 4294967295u)), Struct_1(vec4<f32>(2772f, 473f, -422f, -1000f), vec3<bool>(true, true, true), vec3<u32>(50276u, 4294967295u, 1u)), Struct_1(vec4<f32>(-395f, -274f, 959f, -724f), vec3<bool>(true, false, false), vec3<u32>(32293u, 24992u, 4774u)), Struct_1(vec4<f32>(461f, 502f, 1345f, 178f), vec3<bool>(true, false, true), vec3<u32>(2259u, 44131u, 0u)), Struct_1(vec4<f32>(696f, 100f, -1000f, -1678f), vec3<bool>(true, false, false), vec3<u32>(35418u, 60651u, 138499u)), Struct_1(vec4<f32>(358f, -1000f, 1000f, -1184f), vec3<bool>(true, true, true), vec3<u32>(11479u, 1u, 62827u)), Struct_1(vec4<f32>(760f, 2107f, -1529f, -435f), vec3<bool>(false, true, false), vec3<u32>(4294967295u, 11079u, 10131u)), Struct_1(vec4<f32>(549f, -448f, -299f, -627f), vec3<bool>(false, true, true), vec3<u32>(40685u, 29195u, 1u)), Struct_1(vec4<f32>(-536f, -524f, -1467f, -903f), vec3<bool>(false, true, true), vec3<u32>(0u, 1u, 38504u)), Struct_1(vec4<f32>(1323f, -1130f, 269f, -592f), vec3<bool>(true, true, false), vec3<u32>(1u, 0u, 1u)), Struct_1(vec4<f32>(-813f, 861f, 412f, 192f), vec3<bool>(true, false, false), vec3<u32>(48969u, 0u, 43708u)));

var<private> global3: vec2<f32> = vec2<f32>(-104f, 359f);

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global4.a)) - global4.a), vec4<f32>(global3.x, _wgslsmith_f_op_f32(min(global4.a.x, global4.a.x)), 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-523f))))))), !select(global4.b, !global4.b, vec3<bool>(global4.b.x != global4.b.x, global4.b.x, global4.b.x)), ~(~_wgslsmith_mult_vec3_u32(reverseBits(global4.c), ~global4.c)));
    var var_1 = global4.b.x;
    global3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global4.a.wy);
}

