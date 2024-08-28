struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-1000f, 1814f, 1216f), vec3<f32>(1563f, -174f, 556f), vec3<f32>(-137f, 309f, 1303f), vec3<f32>(-650f, -1388f, -523f), vec3<f32>(-398f, -2579f, -1000f), vec3<f32>(382f, -323f, 124f), vec3<f32>(240f, -616f, 869f), vec3<f32>(-895f, 1443f, 646f), vec3<f32>(543f, -778f, 481f), vec3<f32>(1286f, 1000f, -1000f), vec3<f32>(495f, -1000f, 209f), vec3<f32>(1101f, 518f, 1057f), vec3<f32>(-1916f, 1126f, -701f), vec3<f32>(-413f, -1812f, 264f), vec3<f32>(661f, -1255f, -891f), vec3<f32>(-1541f, 1474f, -1040f), vec3<f32>(-393f, -481f, -438f), vec3<f32>(1000f, 291f, -2368f), vec3<f32>(999f, -1901f, -1532f), vec3<f32>(1000f, -811f, -289f), vec3<f32>(572f, 153f, 984f));

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 30>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit((vec4<u32>(105584u, global1.b.x, global1.b.x, global1.b.x) >> (vec4<u32>(39063u, 1u, global1.b.x, global1.b.x) % vec4<u32>(32u))) | ~vec4<u32>(34025u, global1.b.x, 69282u, 95523u))), _wgslsmith_mult_vec3_i32(firstTrailingBit(global1.c), ~countOneBits(vec3<i32>(u_input.a, global1.c.x, 0i))), _wgslsmith_sub_vec2_i32(vec2<i32>(~2147483647i, u_input.a), global1.c.yx));
}

