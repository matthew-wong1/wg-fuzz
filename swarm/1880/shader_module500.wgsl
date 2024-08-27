struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: array<Struct_2, 15>;

var<private> global2: Struct_1;

var<private> global3: Struct_2 = Struct_2(31360u, 728f, vec2<bool>(false, true), Struct_1(vec3<u32>(32203u, 1u, 20229u), vec4<f32>(1065f, -1248f, -537f, 1372f)));

var<private> global4: Struct_3 = Struct_3(true);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2157f;
    global2 = global3.d;
    let var_1 = 1u;
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(40773u), 10u)];
    var var_3 = select(!vec4<bool>(any(vec4<bool>(true, global4.a, var_2.a, true)) | true, true, var_2.a, !(global3.c.x & global3.c.x)), select(!vec4<bool>(all(vec2<bool>(false, true)), var_2.a, !global4.a, any(vec4<bool>(false, global4.a, var_2.a, var_2.a))), !vec4<bool>(any(global3.c), true || global4.a, true, true), global4.a), var_2.a);
    var var_4 = max(~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, u_input.c) >> (min(vec4<u32>(global2.a.x, var_1, u_input.b.x, 1u), vec4<u32>(u_input.a, 0u, 4294967295u, var_1)) % vec4<u32>(32u)), u_input.c), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(-var_4.xyw, u_input.a, -2147483647i, firstTrailingBit(global2.a.zx));
}

