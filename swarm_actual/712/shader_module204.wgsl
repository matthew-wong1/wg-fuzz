struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<Struct_3, 23>;

var<private> global2: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(61136u, 118112u), vec2<u32>(109378u, 31046u), vec2<u32>(38800u, 2574u), vec2<u32>(3741u, 41653u), vec2<u32>(0u, 10718u), vec2<u32>(119831u, 0u), vec2<u32>(24882u, 0u), vec2<u32>(126734u, 8882u), vec2<u32>(1u, 0u), vec2<u32>(13423u, 4294967295u), vec2<u32>(2652u, 10092u), vec2<u32>(62586u, 70055u), vec2<u32>(8958u, 0u), vec2<u32>(22682u, 4294967295u), vec2<u32>(1u, 15643u), vec2<u32>(0u, 1u), vec2<u32>(5336u, 2863u), vec2<u32>(4294967295u, 887u), vec2<u32>(27364u, 30116u), vec2<u32>(32488u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 24>();
    global1 = array<Struct_3, 23>();
    global1 = array<Struct_3, 23>();
    global1 = array<Struct_3, 23>();
    let var_0 = select(!any(vec2<bool>(true, true)), any(vec2<bool>((4294967295u >= u_input.a) & true, true)), !select(true, any(vec2<bool>(true, true)), true));
    let var_1 = ~33822u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1300f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-488f + 818f)))))), firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(9410i, 12328i)));
}

