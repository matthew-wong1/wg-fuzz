struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global1: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-757f, -869f, -628f, 721f), vec4<f32>(-198f, 1174f, 315f, 840f), vec4<f32>(1308f, -1624f, -285f, -160f), vec4<f32>(1665f, 1574f, 1093f, -505f), vec4<f32>(-267f, -471f, 656f, -1521f), vec4<f32>(275f, -332f, 1390f, 986f), vec4<f32>(753f, -135f, -184f, 358f), vec4<f32>(-865f, -647f, -379f, -1615f), vec4<f32>(224f, -1302f, -1046f, 172f), vec4<f32>(-503f, -1000f, -105f, 1137f), vec4<f32>(-246f, 126f, -435f, -1578f), vec4<f32>(919f, 291f, -1054f, -891f), vec4<f32>(-208f, -714f, -1026f, 596f), vec4<f32>(-1000f, -1338f, -2169f, -240f), vec4<f32>(256f, -456f, -285f, 1734f), vec4<f32>(1000f, 1353f, 510f, -919f), vec4<f32>(105f, 719f, 1000f, -1158f), vec4<f32>(1040f, -750f, 743f, 870f), vec4<f32>(-1000f, -2392f, -287f, 1315f), vec4<f32>(1471f, 487f, 1533f, 411f), vec4<f32>(-1245f, 1000f, -589f, 298f), vec4<f32>(-376f, -1043f, -1000f, -422f), vec4<f32>(474f, 297f, -150f, 1132f), vec4<f32>(-1063f, -167f, 1884f, 399f), vec4<f32>(584f, -590f, 679f, -420f), vec4<f32>(-1143f, 1007f, 257f, 740f), vec4<f32>(285f, 1000f, -1073f, 268f));

var<private> global2: array<bool, 17>;

var<private> global3: vec2<i32> = vec2<i32>(0i, 895i);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 10>();
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~abs(vec3<u32>(u_input.b, 0u, u_input.a.x)), ~(vec3<u32>(0u, u_input.b, 27943u) ^ vec3<u32>(u_input.b, 53948u, 1u))), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(u_input.a.x, 0u, u_input.b), vec3<u32>(u_input.a.x, u_input.b, 28641u) & vec3<u32>(u_input.a.x, u_input.a.x, 0u)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 42582u, u_input.b), vec3<u32>(1u, u_input.b, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(78085u, 2257u, u_input.b), vec3<u32>(u_input.a.x, u_input.a.x, 15254u))), ~(vec3<u32>(u_input.a.x, u_input.b, 4948u) ^ vec3<u32>(4294967295u, 0u, 4294967295u)))), reverseBits(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(2962u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
    let var_1 = ~u_input.c;
    global2 = array<bool, 17>();
    var var_2 = _wgslsmith_div_f32(-176f, _wgslsmith_f_op_f32(f32(-1f) * -505f));
    global3 = -abs(firstTrailingBit(_wgslsmith_mult_vec2_i32(var_1.zy >> (var_0.yx % vec2<u32>(32u)), max(var_1.zz, var_1.yy))));
    var_0 = vec3<u32>(0u, _wgslsmith_div_u32(13378u, u_input.b), 20773u);
    global2 = array<bool, 17>();
    let var_3 = Struct_1(vec4<i32>(-32085i, -min(-global3.x, -19376i), u_input.c.x, min(countOneBits(1i), 2147483647i | -u_input.c.x)), select(vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 17u)], all(select(vec4<bool>(global2[_wgslsmith_index_u32(16740u, 17u)], global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(var_0.x, 17u)], global2[_wgslsmith_index_u32(var_0.x, 17u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], true, global2[_wgslsmith_index_u32(1u, 17u)], true), vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 17u)], global2[_wgslsmith_index_u32(u_input.b, 17u)], global2[_wgslsmith_index_u32(505u, 17u)], global2[_wgslsmith_index_u32(111421u, 17u)]))), global2[_wgslsmith_index_u32(4294967295u, 17u)]), !(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], false, global2[_wgslsmith_index_u32(u_input.b, 17u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 17u)], true, true, global2[_wgslsmith_index_u32(1u, 17u)]), global2[_wgslsmith_index_u32(40950u, 17u)])), false));
    let x = u_input.a;
    s_output = StorageBuffer(~4159u);
}

