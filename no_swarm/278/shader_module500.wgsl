struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(43060u, 84694u, 98610u, 5267u, 99927u, 4294967295u, 41745u, 4294967295u, 26955u, 4294967295u, 7317u, 39428u);

var<private> global1: array<bool, 24> = array<bool, 24>(true, false, true, true, true, true, true, true, false, true, true, false, false, true, false, true, false, false, false, true, false, false, true, true);

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<f32>(223f, -1351f), false, vec4<i32>(36756i, -4773i, -73346i, -6408i), vec3<i32>(-1i, -36205i, 1i), true), Struct_1(vec2<f32>(771f, -983f), true, vec4<i32>(1091i, -5203i, -31900i, 22017i), vec3<i32>(2147483647i, -1i, 0i), false), Struct_1(vec2<f32>(-655f, -2485f), false, vec4<i32>(i32(-2147483648), 1i, 2147483647i, -1306i), vec3<i32>(1i, 22696i, -6929i), false), Struct_1(vec2<f32>(-505f, -1839f), true, vec4<i32>(-31013i, 1i, -18133i, 19648i), vec3<i32>(-1910i, 2147483647i, 13229i), false), Struct_1(vec2<f32>(-723f, -1599f), true, vec4<i32>(32922i, -47349i, -5123i, 3291i), vec3<i32>(1i, 2491i, i32(-2147483648)), false), Struct_1(vec2<f32>(287f, -1000f), true, vec4<i32>(1i, -1i, 4877i, 35118i), vec3<i32>(-1885i, 0i, 1i), true), Struct_1(vec2<f32>(-1000f, -1178f), true, vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -71512i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), false), Struct_1(vec2<f32>(566f, 294f), false, vec4<i32>(13213i, i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), false), Struct_1(vec2<f32>(1008f, -119f), false, vec4<i32>(44537i, 56739i, -21889i, 2147483647i), vec3<i32>(70718i, i32(-2147483648), 0i), true), Struct_1(vec2<f32>(-1000f, 665f), true, vec4<i32>(1i, -1i, 2147483647i, 2147483647i), vec3<i32>(23051i, -1i, 1i), true), Struct_1(vec2<f32>(-1171f, 365f), false, vec4<i32>(0i, 0i, -21946i, 0i), vec3<i32>(i32(-2147483648), -5792i, -7986i), false), Struct_1(vec2<f32>(-194f, -447f), true, vec4<i32>(1i, 47808i, -119i, -1i), vec3<i32>(36046i, -1i, i32(-2147483648)), true));

var<private> global3: array<u32, 20> = array<u32, 20>(1u, 56466u, 0u, 4294967295u, 3690u, 4294967295u, 0u, 0u, 91459u, 8108u, 1u, 33468u, 0u, 0u, 1131u, 0u, 0u, 19595u, 33432u, 6644u);

var<private> global4: vec4<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(450f, 622f, 845f)), vec3<f32>(_wgslsmith_f_op_f32(-101f - 233f), _wgslsmith_f_op_f32(round(726f)), _wgslsmith_f_op_f32(select(474f, -253f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 20u)], 12u)], 24u)]))), !vec3<bool>(true, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 12u)], 20u)], 12u)], 24u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(606f, -341f, -111f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -954f, 665f))), vec3<f32>(_wgslsmith_f_op_f32(step(448f, 1009f)), -760f, -479f))), ~u_input.c.zz >> (vec2<u32>(global3[_wgslsmith_index_u32(~(~1u), 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 12u)], 12u)]) % vec2<u32>(32u)));
}

