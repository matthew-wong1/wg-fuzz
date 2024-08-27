struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(-1400f, 22288u, Struct_1(vec4<u32>(1u, 62725u, 1u, 42683u), 752u, true)), Struct_2(1000f, 0u, Struct_1(vec4<u32>(4668u, 0u, 1u, 39384u), 1u, false)), Struct_2(-217f, 4294967295u, Struct_1(vec4<u32>(0u, 1u, 1u, 1u), 75245u, true)), Struct_2(-300f, 1u, Struct_1(vec4<u32>(1u, 21955u, 0u, 55418u), 0u, true)), Struct_2(-790f, 35083u, Struct_1(vec4<u32>(4294967295u, 5580u, 69267u, 22059u), 1u, true)), Struct_2(1227f, 72445u, Struct_1(vec4<u32>(1u, 3880u, 0u, 16784u), 104527u, true)), Struct_2(386f, 40391u, Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 13457u), 4787u, true)), Struct_2(-1328f, 4294967295u, Struct_1(vec4<u32>(20441u, 10937u, 42949u, 12784u), 0u, true)), Struct_2(-1726f, 0u, Struct_1(vec4<u32>(57578u, 51104u, 0u, 27457u), 25737u, true)), Struct_2(-485f, 4294967295u, Struct_1(vec4<u32>(4294967295u, 15588u, 47731u, 1u), 51415u, false)), Struct_2(-1220f, 717u, Struct_1(vec4<u32>(3280u, 4294967295u, 34218u, 3419u), 4294967295u, false)), Struct_2(1000f, 59609u, Struct_1(vec4<u32>(25674u, 1u, 10992u, 0u), 55975u, true)), Struct_2(-820f, 66652u, Struct_1(vec4<u32>(1u, 1u, 1u, 4294967295u), 100586u, false)), Struct_2(-915f, 14502u, Struct_1(vec4<u32>(64582u, 24515u, 64224u, 17175u), 14354u, true)), Struct_2(883f, 4294967295u, Struct_1(vec4<u32>(68469u, 115222u, 1u, 1u), 0u, true)), Struct_2(-1922f, 0u, Struct_1(vec4<u32>(38220u, 27156u, 1u, 72755u), 0u, true)), Struct_2(320f, 0u, Struct_1(vec4<u32>(1u, 0u, 31224u, 48277u), 72084u, false)), Struct_2(1623f, 0u, Struct_1(vec4<u32>(29124u, 0u, 0u, 4294967295u), 4294967295u, true)), Struct_2(744f, 11265u, Struct_1(vec4<u32>(0u, 28924u, 16663u, 881u), 19957u, false)), Struct_2(-681f, 53876u, Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), 11850u, false)), Struct_2(895f, 1u, Struct_1(vec4<u32>(0u, 4049u, 17021u, 32425u), 1u, false)), Struct_2(656f, 13342u, Struct_1(vec4<u32>(4294967295u, 92558u, 16812u, 0u), 2786u, false)), Struct_2(-1772f, 2722u, Struct_1(vec4<u32>(4294967295u, 1u, 44629u, 14971u), 0u, false)));

var<private> global2: array<Struct_1, 3>;

var<private> global3: vec2<f32>;

var<private> global4: vec3<f32> = vec3<f32>(-318f, -376f, -228f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * global4.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(45662u, 4294967295u & u_input.c.x, ~0u, u_input.d.x), ~(~u_input.c)), global2[_wgslsmith_index_u32(~(u_input.e >> (37260u % 32u)) << (~(_wgslsmith_mod_u32(u_input.d.x, u_input.e) << (u_input.d.x % 32u)) % 32u), 3u)]);
    global1 = array<Struct_2, 23>();
    global0 = vec2<bool>(true, true);
    var var_1 = vec2<bool>(true, global0.x);
    var var_2 = select(var_0.c.c, !(!(!var_1.x)), var_1.x) || global0.x;
    return ~var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 23>();
    global0 = !select(select(vec2<bool>(true, false), vec2<bool>(global0.x, global0.x), global0.x), select(vec2<bool>(!global0.x, global0.x), select(!vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), vec2<bool>(global0.x, true)), all(vec4<bool>(false, global0.x, global0.x, false))), true), false);
    let x = u_input.a;
    s_output = StorageBuffer(-1735f, ~0u, firstTrailingBit(func_1()));
}

