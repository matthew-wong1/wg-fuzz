struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<u32>(1u, 0u, 4294967295u), i32(-2147483648), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec3<u32>(1u, 36061u, 4294967295u), 1i, vec2<i32>(-54999i, 34206i)), Struct_1(vec3<u32>(4294967295u, 28129u, 4294967295u), i32(-2147483648), vec2<i32>(i32(-2147483648), -5516i)), Struct_1(vec3<u32>(0u, 81937u, 136790u), 28269i, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec3<u32>(82917u, 28402u, 1u), 2147483647i, vec2<i32>(2621i, i32(-2147483648))), Struct_1(vec3<u32>(4294967295u, 60269u, 4294967295u), 2147483647i, vec2<i32>(1i, 4375i)), Struct_1(vec3<u32>(4294967295u, 3131u, 4294967295u), 38223i, vec2<i32>(-12523i, 71197i)), Struct_1(vec3<u32>(16943u, 1u, 4294967295u), 20711i, vec2<i32>(0i, 8838i)), Struct_1(vec3<u32>(18818u, 19198u, 84513u), -40145i, vec2<i32>(1i, -6139i)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 21959u), i32(-2147483648), vec2<i32>(-1i, 2147483647i)), Struct_1(vec3<u32>(0u, 4294967295u, 38264u), 2147483647i, vec2<i32>(2147483647i, -11511i)), Struct_1(vec3<u32>(4294967295u, 1818u, 5417u), 39620i, vec2<i32>(40250i, 25902i)), Struct_1(vec3<u32>(0u, 4294967295u, 16417u), 25056i, vec2<i32>(-1i, 41483i)), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), 2147483647i, vec2<i32>(72168i, -160i)), Struct_1(vec3<u32>(31200u, 0u, 76027u), -1i, vec2<i32>(2147483647i, -24614i)), Struct_1(vec3<u32>(0u, 75072u, 25410u), i32(-2147483648), vec2<i32>(0i, 24549i)), Struct_1(vec3<u32>(51514u, 61262u, 4294967295u), -16773i, vec2<i32>(-1i, -73272i)), Struct_1(vec3<u32>(1u, 37956u, 44435u), 15102i, vec2<i32>(i32(-2147483648), 59014i)), Struct_1(vec3<u32>(50104u, 4294967295u, 0u), 1i, vec2<i32>(2147483647i, -11662i)), Struct_1(vec3<u32>(1u, 36087u, 0u), 68299i, vec2<i32>(2147483647i, 10693i)), Struct_1(vec3<u32>(0u, 0u, 0u), 19364i, vec2<i32>(0i, 2147483647i)));

var<private> global1: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false));

var<private> global2: array<Struct_3, 24>;

var<private> global3: f32;

var<private> global4: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = reverseBits(i32(-1i) * -1i);
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(658f, 1275f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(2427f - -632f), _wgslsmith_f_op_f32(f32(-1f) * -345f))));
    global4 = reverseBits(-1i);
    global0 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, reverseBits(_wgslsmith_clamp_i32(-reverseBits(2797i), -(i32(-1i) * -32248i), -1i)));
}

