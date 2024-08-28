struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(308f, vec2<f32>(539f, -149f), vec4<i32>(-28450i, 2147483647i, 73115i, 23321i), false);

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-179f, vec2<f32>(-408f, 201f), vec4<i32>(-1i, 66582i, -1i, 0i), true), Struct_1(-1000f, vec2<f32>(1000f, -297f), vec4<i32>(1906i, 1i, -16749i, -9004i), true), Struct_1(-462f, vec2<f32>(643f, 1123f), vec4<i32>(2147483647i, -38607i, -31899i, 11213i), true), Struct_1(1000f, vec2<f32>(285f, -203f), vec4<i32>(3262i, 0i, -1i, 23960i), true), Struct_1(-215f, vec2<f32>(407f, 1524f), vec4<i32>(3696i, -1i, -1i, i32(-2147483648)), false), Struct_1(1000f, vec2<f32>(360f, -797f), vec4<i32>(0i, i32(-2147483648), -1i, -377i), true), Struct_1(-1662f, vec2<f32>(500f, 807f), vec4<i32>(-40657i, -53194i, -36348i, -1i), false), Struct_1(864f, vec2<f32>(-333f, 1394f), vec4<i32>(2147483647i, -9577i, 0i, 2147483647i), false), Struct_1(-503f, vec2<f32>(710f, 616f), vec4<i32>(8015i, -27773i, -41579i, 44202i), true), Struct_1(363f, vec2<f32>(1454f, -413f), vec4<i32>(1i, i32(-2147483648), -49462i, i32(-2147483648)), false), Struct_1(-360f, vec2<f32>(1000f, 789f), vec4<i32>(16935i, -14884i, 4378i, 0i), true), Struct_1(811f, vec2<f32>(-1781f, -1000f), vec4<i32>(0i, 2147483647i, 0i, 2147483647i), true), Struct_1(787f, vec2<f32>(-449f, 172f), vec4<i32>(7100i, 0i, i32(-2147483648), 0i), false), Struct_1(1207f, vec2<f32>(-452f, -207f), vec4<i32>(-25102i, -1i, -21468i, 2147483647i), true), Struct_1(1420f, vec2<f32>(-772f, -172f), vec4<i32>(-1i, 1i, -22222i, -11201i), false), Struct_1(1702f, vec2<f32>(1285f, 489f), vec4<i32>(0i, -1574i, -7084i, 6598i), false), Struct_1(-919f, vec2<f32>(155f, 284f), vec4<i32>(76071i, -11169i, 44281i, 36912i), true), Struct_1(-2009f, vec2<f32>(963f, -532f), vec4<i32>(-30661i, -5096i, 18281i, 16028i), false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(359f, _wgslsmith_f_op_f32(global1.x + 1f)), global0.b));
    global1 = global0.b;
    global2 = array<Struct_1, 18>();
    let var_0 = global2[_wgslsmith_index_u32(~(~1u), 18u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1104f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - global1.x), global1.x)) * _wgslsmith_f_op_f32(step(777f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x))))), _wgslsmith_div_vec2_f32(global0.b, _wgslsmith_f_op_vec2_f32(-var_0.b)), var_0.c, all(!vec2<bool>(global0.d, false)) || true);
    let var_2 = Struct_1(-1320f, vec2<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-214f * global0.b.x), -1047f)), var_1.c, var_0.d);
    global2 = array<Struct_1, 18>();
    let var_3 = var_2.d;
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(716f + _wgslsmith_f_op_f32(exp2(var_1.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, 0u, ~firstTrailingBit(u_input.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(409f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -170f, true))))));
}

