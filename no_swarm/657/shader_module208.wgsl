struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(0u, false, -319f, 0u, vec3<i32>(2147483647i, 1i, -18160i)), Struct_1(3733u, false, 1435f, 1u, vec3<i32>(-1i, -7180i, 26031i)), Struct_1(0u, false, -629f, 4294967295u, vec3<i32>(-1i, 7104i, 2147483647i)), Struct_1(0u, true, 639f, 4294967295u, vec3<i32>(-14997i, 2147483647i, i32(-2147483648))), Struct_1(2896u, true, 843f, 45615u, vec3<i32>(32283i, 2147483647i, -8i)), Struct_1(721u, true, -1968f, 84793u, vec3<i32>(i32(-2147483648), 1i, 2147483647i)), Struct_1(56783u, true, -1626f, 8058u, vec3<i32>(0i, 2147483647i, 46295i)), Struct_1(0u, false, 1107f, 0u, vec3<i32>(1i, i32(-2147483648), 0i)), Struct_1(0u, false, -184f, 35193u, vec3<i32>(61804i, 68408i, 16138i)), Struct_1(40524u, false, -1000f, 1u, vec3<i32>(i32(-2147483648), 42117i, 28227i)), Struct_1(133548u, true, -739f, 4294967295u, vec3<i32>(-48446i, -9458i, 1i)), Struct_1(4294967295u, false, 1000f, 72171u, vec3<i32>(0i, i32(-2147483648), -18717i)), Struct_1(1u, true, 1000f, 4294967295u, vec3<i32>(-47112i, 11901i, 0i)), Struct_1(39566u, true, 1000f, 4294967295u, vec3<i32>(1i, 1i, 1i)), Struct_1(0u, true, -704f, 14538u, vec3<i32>(-41214i, 27205i, 0i)), Struct_1(4294967295u, true, -101f, 0u, vec3<i32>(-15786i, 0i, 354i)));

var<private> global1: array<u32, 21>;

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, 1u);
}

