struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: Struct_4,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: array<Struct_4, 17>;

var<private> global2: array<i32, 27>;

var<private> global3: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(1u, 15577u, 4294967295u, 1u), vec4<u32>(1u, 1u, 1u, 23409u), vec4<u32>(0u, 1u, 72052u, 59787u), vec4<u32>(1u, 4294967295u, 9757u, 67280u), vec4<u32>(48171u, 0u, 1u, 43041u), vec4<u32>(48429u, 4294967295u, 1u, 0u), vec4<u32>(1u, 25910u, 58373u, 1u), vec4<u32>(35615u, 0u, 1u, 18019u), vec4<u32>(28004u, 0u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 41653u, 0u), vec4<u32>(54662u, 42317u, 4294967295u, 38366u), vec4<u32>(26700u, 1u, 1u, 1u), vec4<u32>(4294967295u, 0u, 0u, 63522u), vec4<u32>(0u, 11283u, 15173u, 14886u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(1u, 4571u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(51202u, 5552u, 4294967295u, 46096u));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(min(select(_wgslsmith_mod_vec3_i32(u_input.c, u_input.c), vec3<i32>(u_input.c.x, -28577i, 6383i), global0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(18834i, u_input.c.x, -20508i) & vec3<i32>(-1i, global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec3<i32>(1i, 0i, 15109i))), vec3<i32>(-(-17437i << (u_input.a.x % 32u)), 1111i, global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 27u)])), vec3<u32>(5339u, 1u, 35266u) << (~vec3<u32>(4294967295u & u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u)));
}

