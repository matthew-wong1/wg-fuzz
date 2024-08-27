struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
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

var<private> global0: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(14988u, -968f, 1u, vec3<i32>(-1i, 2147483647i, 25105i), Struct_1(vec3<i32>(1519i, 1i, -1i))), Struct_3(0u, 368f, 1u, vec3<i32>(34577i, 0i, 1i), Struct_1(vec3<i32>(1i, 60587i, -1i))), Struct_3(19386u, 2077f, 0u, vec3<i32>(0i, 2147483647i, 0i), Struct_1(vec3<i32>(-1i, -21702i, i32(-2147483648)))), Struct_3(4294967295u, -447f, 43508u, vec3<i32>(10993i, 11183i, -1i), Struct_1(vec3<i32>(2147483647i, 2147483647i, -1i))), Struct_3(4294967295u, 469f, 42104u, vec3<i32>(-34499i, 12614i, -1i), Struct_1(vec3<i32>(-1252i, 2147483647i, 2147483647i))), Struct_3(1u, -624f, 41376u, vec3<i32>(i32(-2147483648), 0i, -19304i), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -61159i))), Struct_3(1u, -1000f, 48610u, vec3<i32>(1i, 14724i, 1i), Struct_1(vec3<i32>(39506i, 2147483647i, 2147483647i))), Struct_3(4294967295u, -1644f, 0u, vec3<i32>(21236i, 0i, -6225i), Struct_1(vec3<i32>(-40817i, i32(-2147483648), 0i))), Struct_3(76452u, 706f, 4294967295u, vec3<i32>(15446i, 0i, 33840i), Struct_1(vec3<i32>(33683i, 2147483647i, -26983i))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(u_input.c, ~24600i), firstTrailingBit(u_input.c) ^ -9179i, ~_wgslsmith_mult_i32(abs(-1946i), -59590i)));
    global0 = array<Struct_3, 9>();
    let var_1 = var_0.a.x;
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.d, ~u_input.b.x, 0u, 0u));
}

