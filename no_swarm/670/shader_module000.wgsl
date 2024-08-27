struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec2<u32>(1u, 1u), vec2<i32>(23778i, -42641i)), Struct_4(vec2<u32>(0u, 0u), vec2<i32>(0i, 4481i)), Struct_4(vec2<u32>(1u, 1860u), vec2<i32>(27300i, 2147483647i)), Struct_4(vec2<u32>(4294967295u, 0u), vec2<i32>(-1i, -1i)), Struct_4(vec2<u32>(4294967295u, 40576u), vec2<i32>(10428i, 2147483647i)), Struct_4(vec2<u32>(22073u, 75786u), vec2<i32>(-76861i, 5124i)), Struct_4(vec2<u32>(46923u, 1u), vec2<i32>(0i, 52240i)), Struct_4(vec2<u32>(1u, 5136u), vec2<i32>(-65756i, 0i)));

var<private> global2: array<vec3<i32>, 25>;

var<private> global3: bool = false;

var<private> global4: array<bool, 13>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(vec4<i32>(u_input.a.x, 10266i, u_input.a.x, 0i), _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(4294967295u, 1u)));
    let var_1 = !(!(!(select(var_0.b, 0u, global0.a) <= 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, ~4294967295u, -_wgslsmith_mult_vec3_i32(firstTrailingBit(global2[_wgslsmith_index_u32(37836u, 25u)]), _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, var_0.a.x, 23049i))) << (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.b, 0u), 1u), countOneBits(0u), ~(~8738u)) % vec3<u32>(32u)));
}

