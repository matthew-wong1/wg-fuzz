struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(50078i, 46122i), Struct_1(-8431i, -60443i), Struct_1(-14911i, -61406i), Struct_1(2147483647i, i32(-2147483648)), Struct_1(-49926i, -37470i), Struct_1(0i, 2147483647i), Struct_1(-48916i, i32(-2147483648)), Struct_1(2147483647i, 50440i), Struct_1(-55087i, i32(-2147483648)), Struct_1(-1i, 0i), Struct_1(-1i, i32(-2147483648)), Struct_1(1i, i32(-2147483648)), Struct_1(1i, -1i), Struct_1(2147483647i, -1i), Struct_1(-35350i, -5172i));

var<private> global3: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-482f, 246f), vec2<f32>(516f, 128f), vec2<f32>(1991f, -940f), vec2<f32>(-819f, 3030f), vec2<f32>(554f, -442f), vec2<f32>(1000f, -602f), vec2<f32>(-467f, 843f), vec2<f32>(-1560f, 247f), vec2<f32>(1000f, -560f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(!(!global1.x) && true, global1.x), !global1.zy, true);
    global0 = 30914u;
    let var_1 = abs(abs(vec3<u32>(4294967295u, _wgslsmith_mult_u32(firstTrailingBit(u_input.a), countOneBits(u_input.b.x)), u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-49746i, _wgslsmith_f_op_f32(-1023f - -1981f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(955f)), _wgslsmith_f_op_f32(-240f + 1529f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f)) - -893f)));
}

