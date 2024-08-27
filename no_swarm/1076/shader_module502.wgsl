struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4;

var<private> global2: array<vec2<u32>, 32>;

var<private> global3: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec4<u32>(11611u, 29596u, 16492u, 0u), true, vec2<bool>(false, false), -198f, 0u), Struct_4(vec4<u32>(4294967295u, 14179u, 27945u, 4294967295u), true, vec2<bool>(true, true), 1130f, 4294967295u), Struct_4(vec4<u32>(0u, 21525u, 4294967295u, 1u), true, vec2<bool>(false, true), -1381f, 68196u), Struct_4(vec4<u32>(4294967295u, 3412u, 4294967295u, 4294967295u), true, vec2<bool>(false, false), -1476f, 0u), Struct_4(vec4<u32>(1u, 4975u, 33437u, 23340u), true, vec2<bool>(false, false), -1000f, 21919u), Struct_4(vec4<u32>(65844u, 0u, 0u, 0u), true, vec2<bool>(false, false), -1170f, 1u), Struct_4(vec4<u32>(1u, 4294967295u, 30283u, 17543u), true, vec2<bool>(false, false), -815f, 36683u), Struct_4(vec4<u32>(1u, 0u, 1541u, 33647u), false, vec2<bool>(true, true), -439f, 1u), Struct_4(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), true, vec2<bool>(true, true), -190f, 21647u));

var<private> global4: array<vec4<i32>, 28>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> StorageBuffer {
    var var_0 = vec4<i32>(global0.c.x, 0i, 7759i, _wgslsmith_mult_i32(8338i, _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, -11936i) | (-2147483647i << (global0.a.x % 32u)), 0i)));
    return StorageBuffer(~(~vec4<u32>(u_input.b, u_input.d, _wgslsmith_sub_u32(21123u, 0u), u_input.d)), _wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(1u, global0.a.x, global0.a.x, 5763u)), ~vec4<u32>(0u, global0.a.x, 20312u, 92913u) & ~select(vec4<u32>(25856u, u_input.b, 110689u, global1.a.x), global1.a, true), ~(~(vec4<u32>(39463u, u_input.b, 4294967295u, 7514u) | global1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

